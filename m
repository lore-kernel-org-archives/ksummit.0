Return-Path: <fengguang.wu@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A3813BB6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 11:16:32 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 13307A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 11:16:32 +0000 (UTC)
Date: Sun, 12 Jul 2015 19:15:47 +0800
From: Fengguang Wu <fengguang.wu@intel.com>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20150712111547.GB24634@wfg-t540p.sh.intel.com>
References: <20150707092434.GE11162@sirena.org.uk>
	<559BEF61.8050904@roeck-us.net>
	<CAMuHMdX6KcmZhibEC6hn2VN7veMSbbj1+P3kf=udY39fjdjj5w@mail.gmail.com>
	<20150708075409.GJ4341@mwanda>
	<20150708095207.GN11162@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20150708095207.GN11162@sirena.org.uk>
Cc: Shuah Khan <shuah.kh@samsung.com>, Kevin Hilman <khilman@linaro.org>,
	Tyler Baker <tyler.baker@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 08, 2015 at 10:52:07AM +0100, Mark Brown wrote:
> On Wed, Jul 08, 2015 at 10:54:09AM +0300, Dan Carpenter wrote:
> 
> > Doesn't the 0day system obsolete the "Build regression" emails?  It
> > should be sending emails to everyone introducing new build warnings.
> 
> 0day only covers some configurations

Last year it has extended kconfig coverage to all arch/*/configs/*.
Adding defconfigs there will auto add them to 0day. :)

> and doesn't always manage to kick
> in (I know I've had stuff come in via other channels sometimes, it seems
> to depend on loading).

If so, it should be considered a bug. Feel free to report such cases
to me.

If 0day failed to catch the error, it might be due to

- regressions in 0day itself -- it's still in active development,
  in the past year I did 1k patches to 0day build/boot scripts and
  2k patches to the follow up LKP (Linux Kernel Performance) tests.

- the "report once" logic, it's tricky and can possibly hide issues

- failed bisect, rare but possible

- machine hang, network/disk fails, etc. maintenance incidents

"Loading" may add latency, however it's not the cause to miss errors.

> > Are people ignoring them?
> 
> They're not reliably followed through on, no, and one of the things with
> 0day is that it just generates a one time report so if things don't get
> followed up on then that's that.  A regular "these are all the issues"
> mail helps chase down those issues.

0day has such report type. It will be sent after each git push (unless
you push too quickly) and it looks like this. Just drop me a note and
list the git trees/branches you wish to receive such notice emails.

 Subject: [amirv:for-upstream] b132dcd12e0ab2a49ae5b02b5549cb65408a96ef BUILD DONE

git://flatbed.openfabrics.org/~amirv/linux.git  for-upstream
b132dcd12e0ab2a49ae5b02b5549cb65408a96ef  IB/mlx4: Use correct device for XRC [ib-next:issue_511091]
                                                                                                       
drivers/infiniband/core/cache.c:558:9: sparse: too many arguments for function __builtin_expect
drivers/infiniband/core/device.c:176:9: sparse: too many arguments for function __builtin_expect
drivers/infiniband/core/device.c:767:4-21: code aligned with following code on line 768

Error ids grouped by kconfigs:

recent_errors
├── i386-allmodconfig
│   └── drivers-infiniband-core-device.c:code-aligned-with-following-code-on-line
└── x86_64-allmodconfig
    ├── drivers-infiniband-core-cache.c:sparse:too-many-arguments-for-function-__builtin_expect
    └── drivers-infiniband-core-device.c:sparse:too-many-arguments-for-function-__builtin_expect

elapsed time: 53m

configs tested: 83

powerpc                     tqm8548_defconfig
powerpc                     tqm8555_defconfig
um                               alldefconfig
i386                     randconfig-a0-201527
x86_64                            allnoconfig
sh                            titan_defconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
i386                             allyesconfig
arm                                    sa1100
arm                         at91_dt_defconfig
arm                               allnoconfig
arm                                   samsung
...

Thanks,
Fengguang
