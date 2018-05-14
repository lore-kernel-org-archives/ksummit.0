Return-Path: <boris.brezillon@bootlin.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6E8BE1F51
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 May 2018 08:34:31 +0000 (UTC)
Received: from mail.bootlin.com (mail.bootlin.com [62.4.15.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 6DDAA189
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 May 2018 08:34:30 +0000 (UTC)
Date: Mon, 14 May 2018 10:34:28 +0200
From: Boris Brezillon <boris.brezillon@bootlin.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20180514103428.55285a70@bbrezillon>
In-Reply-To: <CAMuHMdWQTOioXPmWX+_jetECpp9=SCK_BfWq9kJ7xj3WTnB_ng@mail.gmail.com>
References: <20180502194632.GB18390@sasha-vm>
	<20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<CAPDyKFrCKkRHwOh-7yfFbvMp+Ykhs7oXrDwhTShSPvUBvpn2ZQ@mail.gmail.com>
	<20180509084440.GW13402@sirena.org.uk>
	<CAKMK7uEWYmhA3owSeYM9tNA0tpMm5=4Yqda2j=VfMWi7i8ya8w@mail.gmail.com>
	<nycvar.YFH.7.76.1805101802150.27054@cbobk.fhfr.pm>
	<20180510164722.GH8514@sasha-vm>
	<CAMuHMdWDNjsba29id4Svjy_tauKivWDUixub3qf82Nx_6rYueA@mail.gmail.com>
	<CAMuHMdUHK=kmJB-=G-Y7YEneZityMzi5YZ3nJFD6uCs61bOaiQ@mail.gmail.com>
	<20180514101237.5df1e0d7@bbrezillon>
	<CAMuHMdWQTOioXPmWX+_jetECpp9=SCK_BfWq9kJ7xj3WTnB_ng@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 14 May 2018 10:29:04 +0200
Geert Uytterhoeven <geert@linux-m68k.org> wrote:

> Hi Boris,
> 
> On Mon, May 14, 2018 at 10:12 AM, Boris Brezillon
> <boris.brezillon@bootlin.com> wrote:
> > On Mon, 14 May 2018 10:00:30 +0200
> > Geert Uytterhoeven <geert@linux-m68k.org> wrote:  
> >> On Tue, May 1, 2018 at 10:00 PM, Sasha Levin
> >> <Alexander.Levin@microsoft.com> wrote:  
> >> > On Tue, May 01, 2018 at 03:44:50PM -0400, Theodore Y. Ts'o wrote:  
> >> >>On Tue, May 01, 2018 at 04:38:21PM +0000, Sasha Levin wrote:  
> >> > What's worse is that that commit is tagged for stable, which means
> >> > that (given Greg's schedule) it may find it's way to -stable users
> >> > even before some -next users/bots had a chance to test it out.  
> >>
> >> I just noticed a case where a commit was picked up for stable, while a
> >> bot had flagged it as a build regression 18 hours earlier (with a CC to
> >> lkml).  
> >
> > Also, this patch has been on a tree that I know is tested by Fengguang's
> > robots for more than a week (and in linux-next for 2 days, which, I
> > agree, is probably not enough), and still, I only received the bug
> > report when the patch reached mainline. Are there tests that are only
> > run on Linus' tree?  
> 
> Have your received a success report from Fengguang's bot, listing all
> configs tested (the broken one should be included; it is included in the
> configs tested on my branches)?

Yes I did (see below).

-->8--
From: kbuild test robot <lkp@intel.com>
To: Boris Brezillon <boris.brezillon@bootlin.com>
Subject: [bbrezillon-0day:mtd/fixes] BUILD SUCCESS  fc3a9e15b492eef707afd56b7478001fdecfe53f
Date: Mon, 07 May 2018 20:05:52 +0800
User-Agent: Heirloom mailx 12.5 6/20/10

tree/branch: https://github.com/bbrezillon/linux-0day  mtd/fixes
branch HEAD: fc3a9e15b492eef707afd56b7478001fdecfe53f  mtd: rawnand: Make sure we wait tWB before polling the STATUS reg

elapsed time: 49m

configs tested: 142

The following configs have been built successfully.
More configs may be tested in the coming days.

powerpc                     skiroot_defconfig
sh                          kfr2r09_defconfig
x86_64                             acpi-redef
x86_64                           allyesdebian
x86_64                                nfsroot
m68k                       bvme6000_defconfig
powerpc                     ppa8548_defconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
i386                   randconfig-c0-05071338
i386                               tinyconfig
i386                     randconfig-n0-201818
x86_64                 randconfig-x002-201818
x86_64                 randconfig-x006-201818
x86_64                 randconfig-x005-201818
x86_64                 randconfig-x001-201818
x86_64                 randconfig-x009-201818
x86_64                 randconfig-x004-201818
x86_64                 randconfig-x003-201818
x86_64                 randconfig-x007-201818
x86_64                 randconfig-x000-201818
x86_64                 randconfig-x008-201818
i386                     randconfig-i1-201818
i386                     randconfig-i0-201818
alpha                               defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
ia64                                defconfig
mips                                defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
s390                        default_defconfig
x86_64                 randconfig-g0-05071702
openrisc                    or1ksim_defconfig
um                             i386_defconfig
um                           x86_64_defconfig
i386                             allmodconfig
ia64                             alldefconfig
ia64                              allnoconfig
i386                     randconfig-a0-201818
i386                     randconfig-a1-201818
x86_64                 randconfig-s0-05071833
x86_64                 randconfig-s1-05071833
x86_64                 randconfig-s2-05071833
x86_64                 randconfig-s0-05071933
x86_64                 randconfig-s1-05071933
x86_64                 randconfig-s2-05071933
c6x                        evmc6678_defconfig
h8300                    h8300h-sim_defconfig
nios2                         10m50_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
i386                             alldefconfig
i386                              allnoconfig
i386                                defconfig
x86_64                              federa-25
x86_64                                   rhel
x86_64                               rhel-7.2
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
i386                     randconfig-s0-201818
i386                     randconfig-s1-201818
x86_64                 randconfig-s3-05071918
x86_64                 randconfig-s4-05071918
x86_64                 randconfig-s5-05071918
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                                   jz4740
mips                      malta_kvm_defconfig
mips                                     txx9
x86_64                   randconfig-i0-201818
i386                   randconfig-b0-05071353
sparc                               defconfig
sparc64                           allnoconfig
sparc64                             defconfig
mips                      maltaaprp_defconfig
mips                           mtx1_defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
i386                   randconfig-h0-05070458
i386                   randconfig-h1-05070458
x86_64                randconfig-ne0-05071525
x86_64                 randconfig-h0-05070841
i386                   randconfig-x008-201818
i386                   randconfig-x006-201818
i386                   randconfig-x000-201818
i386                   randconfig-x004-201818
i386                   randconfig-x009-201818
i386                   randconfig-x003-201818
i386                   randconfig-x001-201818
i386                   randconfig-x002-201818
i386                   randconfig-x005-201818
i386                   randconfig-x007-201818
x86_64                 randconfig-x010-201818
x86_64                 randconfig-x014-201818
x86_64                 randconfig-x013-201818
x86_64                 randconfig-x011-201818
x86_64                 randconfig-x015-201818
x86_64                 randconfig-x019-201818
x86_64                 randconfig-x016-201818
x86_64                 randconfig-x018-201818
x86_64                 randconfig-x012-201818
x86_64                 randconfig-x017-201818
i386                   randconfig-x013-201818
i386                   randconfig-x014-201818
i386                   randconfig-x019-201818
i386                   randconfig-x016-201818
i386                   randconfig-x015-201818
i386                   randconfig-x012-201818
i386                   randconfig-x018-201818
i386                   randconfig-x010-201818
i386                   randconfig-x011-201818
i386                   randconfig-x017-201818
i386                   randconfig-x073-201818
i386                   randconfig-x075-201818
i386                   randconfig-x079-201818
i386                   randconfig-x071-201818
i386                   randconfig-x076-201818
i386                   randconfig-x074-201818
i386                   randconfig-x078-201818
i386                   randconfig-x077-201818
i386                   randconfig-x070-201818
i386                   randconfig-x072-201818
arm                               allnoconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                             allnoconfig
arm64                               defconfig
i386                   randconfig-x0-05071422

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
