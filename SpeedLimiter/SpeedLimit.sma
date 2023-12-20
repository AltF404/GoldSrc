#include <amxmodx>

const Float:MAX_SPEED = 510.0;
const Float:RESET_SPEED = 500.0;

public plugin_init() {
    register_plugin("Speed Control", "1.0", "AltF4");
    //create_timer(1.0, Timer_CheckSpeed); bag pula ca l-am declarat gresit 
}

public Timer_CheckSpeed() {
    for (new i = 1; i <= get_maxplayers(); i++) {
        if (!is_user_connected(i))
            continue;

        new Float:playerSpeed = get_player_speed(i);

        if (playerSpeed >= MAX_SPEED) {
            set_player_speed(i, RESET_SPEED);
            client_print(i, print_chat, "Viteza a fost setata la 500!");
        }
    }
}

public set_player_speed(id, Float:speed) {
    // Setezi speedul playerului in joc
    // Acesta este un substituent și ar trebui înlocuit cu metoda corectă în engineul jocului
 }

public Float:get_player_speed(id) {
    //  Setezi speedul playerului in joc
    // Acesta este un substituent și ar trebui înlocuit cu metoda corectă în engineul jocului 
    // Returneaza speedul unui jucator cu un anumit id
}