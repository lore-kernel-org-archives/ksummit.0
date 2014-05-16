Return-Path: <chriscool@tuxfamily.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id AD1092FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 05:23:15 +0000 (UTC)
Received: from delay-1y.bbox.fr (delay-1y.bbox.fr [194.158.98.16])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id D6099200A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 05:23:14 +0000 (UTC)
Received: from mail-3y.bbox.fr (bt8sssoh.cs.dolmen.bouyguestelecom.fr
	[172.24.208.141])
	by delay-1y.bbox.fr (Postfix) with ESMTP id CA865EA9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 07:12:39 +0200 (CEST)
Date: Fri, 16 May 2014 07:12:35 +0200 (CEST)
Message-Id: <20140516.071235.43594747461699681.chriscool@tuxfamily.org>
To: jason@lakedaemon.net
From: Christian Couder <chriscool@tuxfamily.org>
In-Reply-To: <20140516030708.GV27822@titan.lakedaemon.net>
References: <s5hvbt9izdm.wl%tiwai@suse.de>
	<20140516030708.GV27822@titan.lakedaemon.net>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org, dan.carpenter@oracle.com
Subject: Re: [Ksummit-discuss] [TOPIC] Metadata addendum to git commit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi,

From: Jason Cooper <jason@lakedaemon.net>

> Takashi,
> 
> On Tue, May 13, 2014 at 03:25:57PM +0200, Takashi Iwai wrote:
>> I think this has been already raised a few times, but I'm still
>> dreaming one thing in our git management: having some metadata
>> collection / link for each commit.
>> 
>> I don't mean for a thing like post-commit sign-off, but rather for
>> tracking the information that has been revealed after commit, e.g. a
>> regression the commit causes, the later fix commit, 
> 
> For the stuff flying by me, I've been adding the:
> 
> Fixes: <12-char hash>: ('Offending patch subject')
> 
> On patches fixing a regression.  It helps the stable team (when Cc
> stable is also added) and in your scenario, you could grep the commits
> for the result of your bisect.
> 
>> or a bugzilla or
> 
> Sorry, I don't use it.
> 
>> ML link for the further discussion or debugging session.
> 
> We've also been autogenerating a tag:
> 
> Link: https://lkml.kernel.org/r/<Message-Id>
> 
> For all patches that points to the email the patch came from.  Not
> exactly what you were looking for, but nothing prevents someone from
> replying to that thread a year later with a regression report.
> 
> I've also been contemplating adding
> 
> Coverletter: https://lkml.kernel.org/r/<First Reference Msg-Id>
> 
> for large series where the patch submitter has done a thorough writeup
> in the coverletter.

I have been working on a new git command "git interpret-trailers" to
help people add the above kind of trailer lines:

http://thread.gmane.org/gmane.comp.version-control.git/245874/

This was started by the following thread on the git mailing list:

http://thread.gmane.org/gmane.comp.version-control.git/236770/

which itself was started by decisions at Linux Kernel Summit 2013.

About bisecting with untestable commits, I suggest preparing fixed up
branches where the bug that prevents testing is fixed and then using
"git replace" to tell Git to use the fixed up branch instead of the
original one. This way you can easily share these fixed up branches.

Here is a presentation I give about "git replace": 

http://www.slideshare.net/ChristianCouder/new-views-onyourhistorywithgitr

where using fixed up branches to bisect is described starting at slide
19.

(By the way, I gave that presentation at LinuxTag last week in Berlin
and I proposed it for LinuxCon North America next August.)

Best,
Christian.
