Return-Path: <jwboyer@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A683FABF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 19:11:33 +0000 (UTC)
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1993F163
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 19:11:33 +0000 (UTC)
Received: by iebmu5 with SMTP id mu5so161869665ieb.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 08 Jul 2015 12:11:32 -0700 (PDT)
MIME-Version: 1.0
Sender: jwboyer@gmail.com
In-Reply-To: <20150708144928.2cd26c0e@gandalf.local.home>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<1481488.5WJFbB0Dlm@vostro.rjw.lan>
	<CA+5PVA4YON79=wrSTfQ8TJrQNOuLShvaVA1_+BDcTxrmVe_hcQ@mail.gmail.com>
	<20150708021128.GB3102@kroah.com>
	<CA+5PVA7MfHrrRz1+hZNsm27e+QnNL2A53ODWZ1CUZQUkwiouoA@mail.gmail.com>
	<20150708144928.2cd26c0e@gandalf.local.home>
Date: Wed, 8 Jul 2015 15:11:32 -0400
Message-ID: <CA+5PVA5=fowOMZD5pJcdka2dpxOG=-LnBFJUfDeP60h=pTJ-sA@mail.gmail.com>
From: Josh Boyer <jwboyer@fedoraproject.org>
To: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
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

On Wed, Jul 8, 2015 at 2:49 PM, Steven Rostedt <rostedt@goodmis.org> wrote:
> On Wed, 8 Jul 2015 07:43:25 -0400
> Josh Boyer <jwboyer@fedoraproject.org> wrote:
>
>> In order to track this well, you need data from users.  And therein
>> lies one of the problems.  The majority of users don't use kernel.org
>> kernels.  They use distro kernels.  The distros have data and tools to
>> help track bugs and regressions, but upstream is somewhat loathe to
>> look at anything that starts with b and ends with zilla.  Why?
>> Because the data coming from users is often utterly junk.  You get a
>> kernel splat and a "I don't know why this happened."  And frankly, I
>> don't expect them to know why it happened either.  Particularly when
>> you have subsystems that are using WARN_ON as a fixme comment and
>> sprinkling them all over the damn place.
>>
>
> Just a note. I hate the use of WARN_ON()s in this case. I bitch quite
> loudly when I stumble across them (and I do often), because my ktest
> scripts I use to test my own patches will fail if a WARN_ON() is
> triggered.
>
> At least if my test boxes have the hardware that does this, it wont
> last long, as I'm pretty good at bitching ;-)

Are you test boxes headless?  Because i915 is littered with WARN and
WARN_ON, to the point where we carry a patch in Fedora to quiet most
of the state machine related ones.  If you look at retrace and filter
out all the proprietary oopses, i915 is always most of the top 10
kernel issues Fedora sees.

https://retrace.fedoraproject.org/faf/problems/?component_names=3D&associat=
e=3D__None&daterange=3D2015-06-24%3A2015-07-08&exclude_taintflags=3D7&exclu=
de_taintflags=3D9&exclude_taintflags=3D5&bug_filter=3DNone&function_names=
=3D&binary_names=3D&source_file_names=3D&since_version=3D&since_release=3D&=
to_version=3D&to_release=3D#

josh
