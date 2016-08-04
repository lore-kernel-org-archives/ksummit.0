Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E6E947AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 04:05:44 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0182.hostedemail.com
	[216.40.44.182])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 7E01B1DB1F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 04:05:44 +0000 (UTC)
Date: Thu, 4 Aug 2016 00:05:40 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Message-ID: <20160804000540.1a0a10ee@grimm.local.home>
In-Reply-To: <54203DEE-A660-4B3B-B748-D19F08B9D285@gmail.com>
References: <20160802153400.GD10376@sirena.org.uk>
	<3268954.rXb0BJAX6c@vostro.rjw.lan> <87oa5aqjmq.fsf@intel.com>
	<20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<20160803141937.GA9180@kroah.com>
	<alpine.LNX.2.00.1608031642300.22028@cbobk.fhfr.pm>
	<57A21252.7000407@roeck-us.net> <20160803161234.GA32965@dtor-ws>
	<20160803231422.5e2e0fd6@grimm.local.home>
	<54203DEE-A660-4B3B-B748-D19F08B9D285@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 03 Aug 2016 20:32:48 -0700
Dmitry Torokhov <dmitry.torokhov@gmail.com> wrote:

> Do you? Are you certain that everything that is needed for your fix
> for 4.8 to work properly is in 3.14.n?

Most cases yes. If it doesn't apply nicely all the way back, then I
expect an email report from someone telling me that their stable
backport failed to apply cleanly. And if I get time, I try to fix it.

> 
> Also, if it was introduced in 3.4 and you get report from 4.4.n just
> now so we really needed it in 3.14? Maybe it would be better to
> simply leave that old kernel alone? It's been what, 3 years?

Well, any bug that can cause an oops I like to get backported. Tracing
is a different beast than most of the kernel. There's 1000s of options
one can do, and some of these bugs only trigger if you apply one of
those 1000s of options. Thus, it may go unnotice for years, but all it
takes is to be debugging your subsystem in an old kernel using the
tracing infrastructure, and you happen to stumble on one of these bugs
(that I decided not to backport because it's been what? 3 years?) and
the system crashes due to the tracing system. That person will be
pretty pissed and not trust tracing. So yeah, I do backport them.

I also maintain the stable -rt kernel releases. 8 of them to be exact,
and they range from 3.2-rt to 4.4-rt. I like to have these up to date
with the latest tracing fixes too.

-- Steve
