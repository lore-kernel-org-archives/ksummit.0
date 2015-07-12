Return-Path: <fengguang.wu@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 670CEBC3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 10:22:47 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id CC10CAB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 10:22:46 +0000 (UTC)
Date: Sun, 12 Jul 2015 18:21:58 +0800
From: Fengguang Wu <fengguang.wu@intel.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20150712102158.GA24634@wfg-t540p.sh.intel.com>
References: <20150707092434.GE11162@sirena.org.uk>
	<559BEF61.8050904@roeck-us.net>
	<CAMuHMdX6KcmZhibEC6hn2VN7veMSbbj1+P3kf=udY39fjdjj5w@mail.gmail.com>
	<20150708075409.GJ4341@mwanda>
	<CAMuHMdWH+g+=Ra6Do1TOQ8OdvUZ3Y051RnTpOzAQx-AWYidaFQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdWH+g+=Ra6Do1TOQ8OdvUZ3Y051RnTpOzAQx-AWYidaFQ@mail.gmail.com>
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

Hi Geert,

On Wed, Jul 08, 2015 at 10:37:50AM +0200, Geert Uytterhoeven wrote:
> Hi Dan,
> 
> On Wed, Jul 8, 2015 at 9:54 AM, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > Doesn't the 0day system obsolete the "Build regression" emails?  It
> 
> I think kisskb builds more/different configs.
> 
> Is there are list of configs and trees covered by the 0day system available?

Apart from randconfig and all(yes|no|def|mod) configs, the
comprehensive list of configs can be found in arch/*/configs

        $ find arch/*/configs -type f | wc -l
        461

0-day tests them all. Since there are so many of them, only 10% are
run immediately after git pushes aiming for 1-hour respond time. The
others will be tested in machine idle time and see longer delay.

The code coverage is now 543 git trees. Here is the comprehensive list:

https://git.kernel.org/cgit/linux/kernel/git/wfg/lkp-tests.git/tree/repo/linux

$ cat repo/linux/ext4
url: git://git.kernel.org/pub/scm/linux/kernel/git/tytso/ext4.git

I'm always seeking to add more trees. Patches to add new URLs and
tests are highly appreciated!

Thanks,
Fengguang
