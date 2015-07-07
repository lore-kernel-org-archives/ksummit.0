Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7DEB7BCF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 19:05:56 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0195.hostedemail.com
	[216.40.44.195])
	by smtp2.linuxfoundation.org (Postfix) with ESMTP id EAC341DD76
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 19:05:55 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave05.hostedemail.com (Postfix) with ESMTP id A613A18505B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 18:47:28 +0000 (UTC)
Date: Tue, 7 Jul 2015 14:47:25 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Mark Brown <broonie@sirena.org.uk>
Message-ID: <20150707144725.6a19727f@gandalf.local.home>
In-Reply-To: <20150707131411.GI2887@sirena.org.uk>
References: <20150707092434.GE11162@sirena.org.uk>
	<CACVxJT8Ae3t9x=jF-xy6NunqZCbgOoaNxy9AqOxuDg8Dx=Tk6g@mail.gmail.com>
	<20150707131411.GI2887@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Shuah Khan <shuah.kh@samsung.com>, Kevin Hilman <khilman@linaro.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	Tyler Baker <tyler.baker@linaro.org>,
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

On Tue, 7 Jul 2015 14:14:11 +0100
Mark Brown <broonie@sirena.org.uk> wrote:

> On Tue, Jul 07, 2015 at 04:02:13PM +0300, Alexey Dobriyan wrote:
> > On Tue, Jul 7, 2015 at 12:24 PM, Mark Brown <broonie@kernel.org> wrote:
> 
> > >  - Should we start carrying config fragments upstream designed to
> > >    support testing, things like the distro config fragments that keep
> > >    getting discussed are one example here but there's other things like
> > >    collections of debug options we could be looking at.
> 
> > This will gravitate everyone to running the same config which is the opposite
> > of what you want.
> 
> Perhaps, perhaps not - it's not an unequivocal thing either way.  The
> more barriers there are to enabling things the more likely it is that
> people just won't bother in the first place (or that they'll run into
> somme problem and give up before they get things working) and it's not
> clear that having to figure these things out is always a good use of
> people's time.

The testing/selftests tests should have three results: PASS, FAIL,
UNSUPPORTED. The UNSUPPORTED is what should be returned if the kernel
configuration doesn't have the needed features configured. For example,
if you run the ftrace selftests without function tracing enabled, all
the tests that test the function tracer return UNSUPPORTED.

Perhaps we should have a central location that each test needs to add
the required configuration for it to be properly tested. Then if users
want to test various subsystems, they would look in this location for
the proper configs (be it a directory that has files of the tests they
represent, and contain the configs needed). Then there should be no
real barrier for people to run these tests.

Of course if the test requires certain hardware, or a file system, then
that should be properly documented.

-- Steve
