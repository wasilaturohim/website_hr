<?php
function kirimOTPviaTelegram($idTelegram, $otp) {
    $botToken = '6024227528:AAHTW5ygS8jmDPAiNE4IQ3slMbYm0TdRN5M'; // Ganti dengan token bot Telegram Anda
    $chatId = $idTelegram;
    $message = "Kode OTP Anda: " . $otp;

    // Mengirim pesan menggunakan API bot Telegram
    $url = "https://api.telegram.org/bot" . $botToken . "/sendMessage";
    $data = [
        'chat_id' => $chatId,
        'text' => $message
    ];
    $options = [
        'http' => [
            'header' => "Content-type: application/x-www-form-urlencoded\r\n",
            'method' => 'POST',
            'content' => http_build_query($data),
        ],
    ];
    $context = stream_context_create($options);
    $result = file_get_contents($url, false, $context);

    // Mengembalikan hasil pengiriman
    return $result;
}
?>
