/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/zeeshan/Desktop/MTP/Projects/ArithmeticUnits/mux4x4TEST.v";
static int ng1[] = {5, 0};
static int ng2[] = {6, 0};



static void Initial_73_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;

LAB0:    t1 = (t0 + 5080U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(73, ng0);

LAB4:    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng1)));
    memset(t3, 0, 8);
    xsi_vlog_signed_unary_minus(t3, 32, t2, 32);
    t4 = (t0 + 4008);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 4168);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 4);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 4888);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    goto LAB1;

}


extern void work_m_14478229783627901490_3605548985_init()
{
	static char *pe[] = {(void *)Initial_73_0};
	xsi_register_didat("work_m_14478229783627901490_3605548985", "isim/mux4x4TEST_isim_beh.exe.sim/work/m_14478229783627901490_3605548985.didat");
	xsi_register_executes(pe);
}
