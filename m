Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 09235A95
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Jul 2017 09:44:25 +0000 (UTC)
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 44D808D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Jul 2017 09:44:24 +0000 (UTC)
Received: by mail-it0-f67.google.com with SMTP id k3so12353351ita.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Jul 2017 02:44:24 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20170706144208.6hlgxwo37gntk6qm@mwanda>
References: <20170706144028.46a2mt2mdzpt6ip7@mwanda>
	<20170706144208.6hlgxwo37gntk6qm@mwanda>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 10 Jul 2017 11:44:22 +0200
Message-ID: <CAMuHMdW4FFJkhA7oj0uA1an_WNt1wS-tM1KvnjYWwdfjRLjQ7A@mail.gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Michal Hocko <mhocko@kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH 2/2] kconfig: new command line kernel
 configuration tool
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Dan,

On Thu, Jul 6, 2017 at 4:42 PM, Dan Carpenter <dan.carpenter@oracle.com> wr=
ote:
> This tool barely works, it's just a rough draft.
>
> Sometimes I want to search for a config so I have to load menuconfig,
> then search for the config entry, then exit.  With this script I
> simply run:
>
>     ./scripts/kconfig/kconfig search COMEDI
>
> Quite often I find myself trying to enable a feature by doing this:
>
>     echo CONFIG_FEATURE=3Dy >> .config
>
> But when I try to boot the new kernel, I find that the feature isn't
> there because the kernel runs `make oldconfig` and I didn't have all
> the depends selected so it silently removed it.  With this feature
> what you can do is:
>
>     ./scripts/kconfig/kconfig set FEATURE=3Dy
>
> It helps you enable the dependencies or it at least prints an error
> if it can't enable the feature.
>
> But this code isn't all implemented.  1) It doesn't calculate the
> dependencies well.  See expr_parse() for more details.  2)  It
> doesn't work well for things like:
>
>         ./scripts/kconfig/kconfig set BT_INTEL=3Dm
>
> because those aren't visible, they can only be using depend
> statements.  Or say you try to set FEATURE=3Dm when something else
> depends on it be set =3Dy then the error message is wrong.  The
> other problem is that I don't know how to print the help text.
> Again, this is just a rough draft.
>
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Thanks! With the small fixes below, it worked fine for all cases I tried it
with.

> --- /dev/null
> +++ b/scripts/kconfig/lconf.c
> @@ -0,0 +1,332 @@
> +/*
> + * Copyright (C) 2015 Oracle
> + * Released under the terms of the GNU GPL v2.0.
> + *
> + */
> +#define _GNU_SOURCE

    scripts/kconfig/lconf.c:6:0: warning: "_GNU_SOURCE" redefined
     #define _GNU_SOURCE
     ^
    <command-line>:0:0: note: this is the location of the previous definiti=
on

You can do:

    #ifndef _GNU_SOURCE
    #define _GNU_SOURCE
    #endif

like scripts/kconfig/nconf.c does.


> +static int conf_sym(struct symbol *sym)
> +{

> +               if (sym_set_tristate_value(sym, newval)) {
> +                       /* FIXME: if I don't write it doesn't save */
> +                       conf_write(NULL, 1);

    scripts/kconfig/lconf.c: In function =E2=80=98conf_sym=E2=80=99:
    scripts/kconfig/lconf.c:159:4: error: too many arguments to
function =E2=80=98conf_write=E2=80=99
        conf_write(NULL, 1);
        ^
    In file included from scripts/kconfig/lkc.h:24:0,
                     from scripts/kconfig/lconf.c:10:
    scripts/kconfig/lkc_proto.h:8:5: note: declared here

It seems it never took 2 parameters in upstream?
Dropping the "1" works.


> +static void kconfig_set(void)
> +{

> +       res =3D conf_write(NULL, 1);

Likewise


For search, it doesn't work with the CONFIG_ prefix:

$ path-to-source-tree/scripts/kconfig/kconfig search CONFIG_IPMMU_VMSA
  GEN     ./Makefile
No matches found.
$ path-to-source-tree/scripts/kconfig/kconfig search IPMMU_VMSA
  GEN     ./Makefile
Symbol: IPMMU_VMSA [=3Dn]
Type  : boolean
Prompt: Renesas VMSA-compatible IPMMU
  Location:
    -> Device Drivers
      -> IOMMU Hardware Support (IOMMU_SUPPORT [=3Dn])
  Defined at drivers/iommu/Kconfig:275
  Depends on: IOMMU_SUPPORT [=3Dn] && (ARM [=3Dy] || IOMMU_DMA [=3Dn]) &&
(ARCH_RENESAS [=3Dy] || COMPILE_TEST [=3Dn])
  Selects: IOMMU_API [=3Dn] && IOMMU_IO_PGTABLE_LPAE [=3Dn] &&
ARM_DMA_USE_IOMMU [=3Dn]


For set, it works with or without the CONFIG_ prefix:

$ path-to-source-tree/scripts/kconfig/kconfig set CONFIG_IPMMU_VMSA=3Dy
  GEN     ./Makefile

IPMMU_VMSA: has missing dependencies
IOMMU_SUPPORT [=3Dn] && (ARM [=3Dy] || IOMMU_DMA [=3Dn]) && (ARCH_RENESAS
[=3Dy] || COMPILE_TEST [=3Dn])

IOMMU_SUPPORT:  IOMMU Hardware Support [N/y] y
y
#
# configuration written to .config
#
HELP.  Lot of unimplemented code.  1
HELP.  Lot of unimplemented code.  1
#
# configuration written to .config
#
set: IPMMU_VMSA=3Dy
$ diff .config{.orig,}
--- .config.orig        2017-07-10 11:34:13.181395059 +0200
+++ .config     2017-07-10 11:34:23.297370970 +0200
@@ -4,6 +4,9 @@
 #
 CONFIG_ARM=3Dy
 CONFIG_ARM_HAS_SG_CHAIN=3Dy
+CONFIG_NEED_SG_DMA_LENGTH=3Dy
+CONFIG_ARM_DMA_USE_IOMMU=3Dy
+CONFIG_ARM_DMA_IOMMU_ALIGNMENT=3D8
 CONFIG_MIGHT_HAVE_PCI=3Dy
 CONFIG_SYS_SUPPORTS_APM_EMULATION=3Dy
 CONFIG_HAVE_PROC_CPU=3Dy
@@ -3452,6 +3455,7 @@ CONFIG_SYNC_FILE=3Dy
 # CONFIG_SW_SYNC is not set
 # CONFIG_AUXDISPLAY is not set
 # CONFIG_UIO is not set
+# CONFIG_VFIO is not set
 # CONFIG_VIRT_DRIVERS is not set

 #
@@ -3634,7 +3638,19 @@ CONFIG_RENESAS_OSTM=3Dy
 CONFIG_SH_TIMER_TMU=3Dy
 CONFIG_EM_TIMER_STI=3Dy
 # CONFIG_MAILBOX is not set
-# CONFIG_IOMMU_SUPPORT is not set
+CONFIG_IOMMU_API=3Dy
+CONFIG_IOMMU_SUPPORT=3Dy
+
+#
+# Generic IOMMU Pagetable Support
+#
+CONFIG_IOMMU_IO_PGTABLE=3Dy
+CONFIG_IOMMU_IO_PGTABLE_LPAE=3Dy
+# CONFIG_IOMMU_IO_PGTABLE_LPAE_SELFTEST is not set
+# CONFIG_IOMMU_IO_PGTABLE_ARMV7S is not set
+CONFIG_OF_IOMMU=3Dy
+CONFIG_IPMMU_VMSA=3Dy
+# CONFIG_ARM_SMMU is not set

 #
 # Remoteproc drivers

Nice!

BTW, forgetting the =3Dy causes a crash:

$ path-to-source-tree/scripts/kconfig/kconfig set IPMMU_VMSA
  GEN     ./Makefile
path-to-source-tree/scripts/kconfig/Makefile:37: recipe for target
'lconfig' failed
make[4]: *** [lconfig] Segmentation fault
path-to-source-tree/Makefile:548: recipe for target 'lconfig' failed
make[3]: *** [lconfig] Error 2
Makefile:152: recipe for target 'sub-make' failed
make[2]: *** [sub-make] Error 2
Makefile:24: recipe for target '__sub-make' failed
make[1]: *** [__sub-make] Error 2
GNUmakefile:10: recipe for target 'all' failed
make: *** [all] Error 2

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds
