Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1B9E4BC6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 15:05:28 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0029.hostedemail.com
	[216.40.44.29])
	by smtp2.linuxfoundation.org (Postfix) with ESMTP id 68D3D1DCB6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 15:05:27 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave06.hostedemail.com (Postfix) with ESMTP id 5A1481727B8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 15:05:26 +0000 (UTC)
Date: Fri, 10 Jul 2015 11:05:22 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Shuah Khan <shuahkh@osg.samsung.com>
Message-ID: <20150710110522.4b0878cf@gandalf.local.home>
In-Reply-To: <559FD066.2060601@osg.samsung.com>
References: <20150707092434.GE11162@sirena.org.uk>
	<CACVxJT8Ae3t9x=jF-xy6NunqZCbgOoaNxy9AqOxuDg8Dx=Tk6g@mail.gmail.com>
	<20150707131411.GI2887@sirena.org.uk>
	<20150707144725.6a19727f@gandalf.local.home>
	<559E4BF7.8050607@hitachi.com>
	<CACVxJT9ogSSPKjKRcaPR_NngrOX=mofxSOAfmo2Kp70gA=ZnrQ@mail.gmail.com>
	<559FD066.2060601@osg.samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Shuah Khan <shuah.kh@samsung.com>, Kevin Hilman <khilman@linaro.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	Tyler Baker <tyler.baker@linaro.org>, Mark Brown <broonie@sirena.org.uk>,
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

On Fri, 10 Jul 2015 08:02:14 -0600
Shuah Khan <shuahkh@osg.samsung.com> wrote:

> > 
> > I think primary use case is this:
> > * user builds and reboots into kernel with his custom config,
> > * user runs "make test" from fresh build directory,
> > * test harness runs everything runnable and maybe reports necessary
> >   config options to run more
> > 
> > /proc/kconfig.gz should be kept strictly for runtime config.
> > 
> 
> We do have ktest for that. Maybe ktest could include kselftest
> run in its default boot test.

I could have an option to have ktest run the kselftests, but the user
would still need to be able to update configs to tell ktest where the
tests are. Ktest doesn't assume to be run from the repo (I never do
that).

-- Steve
