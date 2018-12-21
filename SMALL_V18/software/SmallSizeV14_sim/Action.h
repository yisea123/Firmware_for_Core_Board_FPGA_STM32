#ifndef _ACTION_H_
#define _ACTION_H_

#include <io.h>
#include <altera_avalon_pio_regs.h>
#include <math.h>
#include "system.h"
#include "Config.h"
#include "My.h"
#include "Robot.h"
#include "Misc.h"
#include "Packet.h"
extern int g_is_shoot_in_main_loop;
extern int g_is_chip_in_main_loop;
extern double buchang(double, double, double);
extern double max_acc();
#define SHOOT 0
#define CHIP 1


typedef struct _shooter_
{
	int strength;
	int count_down;
} shooter_t;


/* update_shooter() should be called every 50us*/

int update_shooter();
int init_shooter();

int do_dribbler( int dribbler );

int do_move( int speed_x, int speed_y, int speed_rot );
int do_acc_handle_move(int speed_x,int speed_y,int speed_rot);


int do_shoot( int shoot, int chip );
int do_chip( int shoot, int chip );

int on_robot_command( packet_robot_t *packet );

#endif
