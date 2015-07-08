Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 19904ABF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 18:56:51 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0014.hostedemail.com
	[216.40.44.14])
	by smtp2.linuxfoundation.org (Postfix) with ESMTP id 8E4741DDAB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 18:56:50 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave06.hostedemail.com (Postfix) with ESMTP id BC17F1743CA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 18:49:31 +0000 (UTC)
Date: Wed, 8 Jul 2015 14:49:28 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Josh Boyer <jwboyer@fedoraproject.org>
Message-ID: <20150708144928.2cd26c0e@gandalf.local.home>
In-Reply-To: <CA+5PVA7MfHrrRz1+hZNsm27e+QnNL2A53ODWZ1CUZQUkwiouoA@mail.gmail.com>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<1481488.5WJFbB0Dlm@vostro.rjw.lan>
	<CA+5PVA4YON79=wrSTfQ8TJrQNOuLShvaVA1_+BDcTxrmVe_hcQ@mail.gmail.com>
	<20150708021128.GB3102@kroah.com>
	<CA+5PVA7MfHrrRz1+hZNsm27e+QnNL2A53ODWZ1CUZQUkwiouoA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Wed, 8 Jul 2015 07:43:25 -0400
Josh Boyer <jwboyer@fedoraproject.org> wrote:
 
> In order to track this well, you need data from users.  And therein
> lies one of the problems.  The majority of users don't use kernel.org
> kernels.  They use distro kernels.  The distros have data and tools to
> help track bugs and regressions, but upstream is somewhat loathe to
> look at anything that starts with b and ends with zilla.  Why?
> Because the data coming from users is often utterly junk.  You get a
> kernel splat and a "I don't know why this happened."  And frankly, I
> don't expect them to know why it happened either.  Particularly when
> you have subsystems that are using WARN_ON as a fixme comment and
> sprinkling them all over the damn place.
> 

Just a note. I hate the use of WARN_ON()s in this case. I bitch quite
loudly when I stumble across them (and I do often), because my ktest
scripts I use to test my own patches will fail if a WARN_ON() is
triggered.

At least if my test boxes have the hardware that does this, it wont
last long, as I'm pretty good at bitching ;-)

-- Steve
