Return-Path: <mtk.manpages@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F120686
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Aug 2015 17:07:47 +0000 (UTC)
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 32D781CE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Aug 2015 17:07:47 +0000 (UTC)
Received: by wicne3 with SMTP id ne3so13134333wic.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Aug 2015 10:07:46 -0700 (PDT)
Message-ID: <55C242DD.6020304@gmail.com>
Date: Wed, 05 Aug 2015 19:07:41 +0200
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
MIME-Version: 1.0
To: Mark Brown <broonie@kernel.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20150801164142.653012af@lwn.net>	<1893963.CjFnBCekyb@vostro.rjw.lan>	<20150803083311.5abd23f6@lwn.net>
	<6756795.jjv2YY7pQg@avalon> <20150804153559.GO20873@sirena.org.uk>
In-Reply-To: <20150804153559.GO20873@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 08/04/2015 05:35 PM, Mark Brown wrote:
> On Tue, Aug 04, 2015 at 03:50:33PM +0300, Laurent Pinchart wrote:
>> On Monday 03 August 2015 08:33:11 Jonathan Corbet wrote:
> 
>>> The nice thing about formats like Markdown or ReST is that they *are*
>>> plain text for all practical purposes.  Much better than DocBook in that
>>> regard.
> 
>> My problem with inline documentation is that it makes easier for developers to 
>> write crappy doc and believe they've done their duty. It's not a technical 
>> issue, and I believe inline documentation has merits, especially for API 
>> documentation, but I've seen too many kerneldoc comments written as
> 
> That's not really anything to do with the fact that the documentation is
> inline, it's more to do with documentation that people are forced to
> write without any obvious interest being shown in the results.  Anything
> else that's done as a pure checkbox effort will have similar effects.
> 
>> That's just useless. Worse, it can give the impression to reviewers that the 
>> function has been documented while it clearly hasn't. Maybe we just need to 
>> tighten the review process and push harder for documentation, at the risk of 
>> rejecting useful contributions. That's not a new problem though.
> 
> I'm not sure that more requirements for documentation will help that
> much, there's a definite skill in writing and review documentation which
> isn't all that common.  Insisting on people writing more without doing
> something to address that may just result in more bad documentation, but
> of course it's a really hard problem to address :(

While it's clear that, like skill at coding, skill at documentation
is wildly variable, almost everyone gets better at it with practice! Like
most problems, the problem would be more tractable if people were paid to
work on this. For a short while, there was an LF documentation fellowship
that had a goal to help things here. It had variable success. For a some
months it supported me (as the second holder of the fellowship) to work
full time on man pages, but there was so much man pages work, that kernel
docs didn't get too much of a look in. And then a few months later
(2008 crash), the funds went away. I raised the topic of reanimating
that fellowship a couple of times subsequently, but nothing came of it. 
That was however quite a few years ago. Given recent initiatives
from LF (such as the Critical Infrastructure Initiative), I wonder
whether it's worth someone checking in with LF about the possibility
of getting this going again. One thing I'd caution against though is
the idea that someone can just be paid to write kernel documentation.
Many parts of the kernel require significant time just to grok what's
going on, let alone document it. A much more efficient route to 
producing good documentation would I think be to have someone
with solid writing skills (as well as coding skills) support others
(i.e., subsystem developers and maintainers) to produce documentation,
by providing writing assistance, technical review, editing, and so on.
Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
