Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7E188AB2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 19:38:14 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0074.hostedemail.com
	[216.40.44.74])
	by smtp2.linuxfoundation.org (Postfix) with ESMTP id 630C71DE9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 19:38:13 +0000 (UTC)
Date: Wed, 8 Jul 2015 15:38:10 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Josh Boyer <jwboyer@fedoraproject.org>
Message-ID: <20150708153810.5f3b2d67@gandalf.local.home>
In-Reply-To: <CA+5PVA5=fowOMZD5pJcdka2dpxOG=-LnBFJUfDeP60h=pTJ-sA@mail.gmail.com>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<1481488.5WJFbB0Dlm@vostro.rjw.lan>
	<CA+5PVA4YON79=wrSTfQ8TJrQNOuLShvaVA1_+BDcTxrmVe_hcQ@mail.gmail.com>
	<20150708021128.GB3102@kroah.com>
	<CA+5PVA7MfHrrRz1+hZNsm27e+QnNL2A53ODWZ1CUZQUkwiouoA@mail.gmail.com>
	<20150708144928.2cd26c0e@gandalf.local.home>
	<CA+5PVA5=fowOMZD5pJcdka2dpxOG=-LnBFJUfDeP60h=pTJ-sA@mail.gmail.com>
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

On Wed, 8 Jul 2015 15:11:32 -0400
Josh Boyer <jwboyer@fedoraproject.org> wrote:


> > At least if my test boxes have the hardware that does this, it wont
> > last long, as I'm pretty good at bitching ;-)
> 
> Are you test boxes headless?  Because i915 is littered with WARN and
> WARN_ON, to the point where we carry a patch in Fedora to quiet most
> of the state machine related ones.  If you look at retrace and filter
> out all the proprietary oopses, i915 is always most of the top 10
> kernel issues Fedora sees.

Sadly, my bitching skills didn't work well here:

 https://lkml.org/lkml/2015/5/7/867

Maybe I let it slide. ktest allows you to run PRE_BUILD scripts, and
what I've gotten use to doing was adding:

 PRE_BUILD = patch -p1 < fix.patch
 POST_BUILD = git reset --hard

Where that fix.patch would include silencing those damn warnings.

As I was under the impression that this was unique to my test box
(which happens to be a development machine).

> 
> https://retrace.fedoraproject.org/faf/problems/?component_names=&associate=__None&daterange=2015-06-24%3A2015-07-08&exclude_taintflags=7&exclude_taintflags=9&exclude_taintflags=5&bug_filter=None&function_names=&binary_names=&source_file_names=&since_version=&since_release=&to_version=&to_release=#

Maybe I should tone my bitching skills again. This time with some
backup ;-)

-- Steve
