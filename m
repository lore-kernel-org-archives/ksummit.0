Return-Path: <fengguang.wu@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 677EABC2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 14:22:44 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id E0A101D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 14:22:43 +0000 (UTC)
Date: Wed, 15 Jul 2015 22:21:56 +0800
From: Fengguang Wu <fengguang.wu@intel.com>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20150715142156.GA1279@wfg-t540p.sh.intel.com>
References: <20150707092434.GE11162@sirena.org.uk>
	<559BEF61.8050904@roeck-us.net>
	<CAMuHMdX6KcmZhibEC6hn2VN7veMSbbj1+P3kf=udY39fjdjj5w@mail.gmail.com>
	<20150708075409.GJ4341@mwanda>
	<20150708095207.GN11162@sirena.org.uk>
	<20150712111547.GB24634@wfg-t540p.sh.intel.com>
	<20150713183441.GJ11162@sirena.org.uk>
	<20150714142241.GB24191@wfg-t540p.sh.intel.com>
	<20150714153831.GZ11162@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150714153831.GZ11162@sirena.org.uk>
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

On Tue, Jul 14, 2015 at 04:38:31PM +0100, Mark Brown wrote:
> On Tue, Jul 14, 2015 at 10:22:41PM +0800, Fengguang Wu wrote:
> > On Mon, Jul 13, 2015 at 07:34:41PM +0100, Mark Brown wrote:
> 
> > > Latency seems like it might be an issue here, when I say I'm not seeing
> > > things that's issues coming up in the -next build before they're
> > > reported by 0day so they might well get fixed before 0day catches up.
> 
> > Ah linux-next happen to have lower priority and can take many hours to
> > finish. I'll increase its priority due to its importance.
> 
> This was actually things in my trees that get merged into -next (or
> which Stephen tries to merge into -next and finds problems with) prior
> to being reported by 0day.

I feel sorry about that and would like to improve. When it happen in
future, feel free to forward me of the missed/delayed error.  Then I
can try to root cause case-by-case.

> > > For me personally it'd be more interesting to be able to get them on
> > > demand (eg, from a web page) than e-mailed, or e-mailed by a human
> > > (possibly with fixes!).  The kernelci.org reporting does a lot of this
> > > but doesn't cover anything except raw compiler warnings.
> 
> > It should be mostly equivalent if you direct such emails to a local
> > mbox and check it on demand. :)
> 
> Well, they don't go away automatically when fixed then...

You may just check the latest build compete notification email.
It'll contain the latest information.

Thanks,
Fengguang
