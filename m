Return-Path: <ralf.ramsauer@oth-regensburg.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5A888E42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 23:52:04 +0000 (UTC)
Received: from mta02.hs-regensburg.de (mta02.hs-regensburg.de [194.95.104.12])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6A34B70D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 23:52:03 +0000 (UTC)
To: Thomas Gleixner <tglx@linutronix.de>, Theodore Ts'o <tytso@mit.edu>
References: <1562077203.3321.2.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907021644420.1802@nanos.tec.linutronix.de>
	<1562080257.3321.19.camel@HansenPartnership.com>
	<1562080696.3321.21.camel@HansenPartnership.com>
	<37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu>
	<alpine.DEB.2.21.1907030048350.1802@nanos.tec.linutronix.de>
From: Ralf Ramsauer <ralf.ramsauer@oth-regensburg.de>
Message-ID: <4ff2dc57-380d-f1ed-d66b-4f30abc6011c@oth-regensburg.de>
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1907030048350.1802@nanos.tec.linutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-PH
Content-Transfer-Encoding: 8bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Wolfgang Mauerer <wolfgang.mauerer@oth-regensburg.de>,
	mete.polat@tuta.io, ksummit-discuss@lists.linuxfoundation.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Date: Wed, 03 Jul 2019 23:52:04 -0000

Hi Thomas,

On 7/3/19 12:49 AM, Thomas Gleixner wrote:
> On Tue, 2 Jul 2019, Theodore Ts'o wrote:
>> On Tue, Jul 02, 2019 at 03:26:48PM -0700, James Bottomley wrote:
>>> git is our upstream for version control and our upstream has already
>>> had this as a feature since 2014.  Trying to go to upstream  5 years
>>> later and ask them to change it is likely going to be a singularly
>>> unsuccessful exercise, plus even in the unlikely event we can work out
>>> how to do it compatibly and without causing confusion and upstream said
>>> yes it would take another few years to propagate.
>>
>> If we really want to use the Link: header, we should be able to do
>> this without requiring any changes to git.
>>
>> Step 1)   git config am.messageid true
>> Step 2)   Write and install a .git/hooks/applypatch-msg script which
>> 	  looks for Message-Id: and transmogrifies that line to a
>> 	  Link: trailer, using the lore.kernel.org URL template
>> Step 3)   Document this in Documentation/process.  For bonus points
>> 	  create a script which automatically sets up the user's git
>> 	  configuration by setting up am.messageid config and
>> 	  installing the hook file.
>> Step 4)   Profit
> 
> Amen.
Unfortunately, Message-IDs aren't unique. People sometimes like to reuse
old Message-IDs, mails may be sent to several lists and are modified by
lists servers (footers, encoding, additional headers). So the Message-ID
per-se isn't a stable indicator which exact message is referenced.

Anyway, in most cases Message-IDs should be good enough for a mapping,
and including Message-IDs in commit messages is a good idea in many regards.

I'm working on PaStA [1], a tool that automatically maps Message-IDs on
lists to commit hashes in repositories with pretty high accuracy. It's
part of a research project at the Technical University of Applied
Sciences Regensburg. For those interested in the method and how it
works, see [2].

Thomas, if you remember, that's the tool that, e.g., quantifies the
upstream effort of the RT project.

Given a commit hash, we're now able to retrieve several revisions of a
patch. This allows you to navigate through all versions of a patch,
including their discussions. In the long run, patchwork integration is
planned -- will keep you up-to-date.

But therefore we optimally need a full coverage of all lists, and lore
only tracks a small subset of 'most important' lists. This is why we
subscribed to all lists mentioned in the MAINTAINERS file and archive
them in the public inbox format [3]. Currently we track ~190 lists.

I'm maintaining this archive (together with its tooling [4]) for the
moment, but I'd be happy if this could be hosted at some LF server.

  Ralf

[1] https://github.com/lfd/PaStA
[2] https://arxiv.org/pdf/1902.03147.pdf
[3] https://github.com/orgs/linux-mailinglist-archives/
[4] https://github.com/lfd/mail-archiver
