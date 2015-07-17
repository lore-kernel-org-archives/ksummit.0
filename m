Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BB376305
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 21:02:22 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0152.hostedemail.com
	[216.40.44.152])
	by smtp2.linuxfoundation.org (Postfix) with ESMTP id 0F8581DAC1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 21:02:22 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave05.hostedemail.com (Postfix) with ESMTP id E538E18405C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 20:55:05 +0000 (UTC)
Date: Fri, 17 Jul 2015 16:55:01 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: josh@joshtriplett.org
Message-ID: <20150717165501.62ed4e04@gandalf.local.home>
In-Reply-To: <20150717204856.GA2048@cloud>
References: <20150716094720.2bf9f5ac@gandalf.local.home>
	<55A7C7FE.6000604@sonymobile.com> <20150716094125.16cdda73@lwn.net>
	<1437063875.18768.59.camel@HansenPartnership.com>
	<20150717101151.5d5bc86d@lwn.net>
	<20150717133712.42c82add@gandalf.local.home>
	<20150717190223.GB1499@cloud>
	<20150717154326.6f129bc4@gandalf.local.home>
	<20150717202412.GA1856@cloud>
	<20150717163903.67747d86@gandalf.local.home>
	<20150717204856.GA2048@cloud>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 17 Jul 2015 13:48:56 -0700
josh@joshtriplett.org wrote:

\ 
> That's perfectly reasonable.  If you want to take the time making the
> code in your area conform to additional requirements above and beyond
> those of the kernel as a whole, go for it.  I appreciate that you don't
> ask others to do it for you.

I can't say I never do. I just don't do it if it's the only change I'm
asking. If there's a logic change or bug I see in my review, I'll add
my comments about formatting along with it.

In fact, I went so far once to fix up a patch submitted by someone that
didn't come close to following CodingStyle. But I wanted the change. I
still gave the guy credit, but that took way too much time than it
should of. But that was an exception because the code submitted was
really worth while.

-- Steve
