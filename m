Return-Path: <chriscool@tuxfamily.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6357C4C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 18 May 2014 19:23:19 +0000 (UTC)
Received: from mail-1y.bbox.fr (mail-1y.bbox.fr [194.158.98.14])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id BD874200AC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 18 May 2014 19:23:18 +0000 (UTC)
Date: Sun, 18 May 2014 21:23:15 +0200 (CEST)
Message-Id: <20140518.212315.1001026942354195075.chriscool@tuxfamily.org>
To: tiwai@suse.de
From: Christian Couder <chriscool@tuxfamily.org>
In-Reply-To: <s5h1tvuf4ov.wl%tiwai@suse.de>
References: <s5hvbt9izdm.wl%tiwai@suse.de>
	<20140516030708.GV27822@titan.lakedaemon.net>
	<s5h1tvuf4ov.wl%tiwai@suse.de>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Cc: jason@lakedaemon.net, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Metadata addendum to git commit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

From: Takashi Iwai <tiwai@suse.de>
>
> At Thu, 15 May 2014 23:07:08 -0400,
> Jason Cooper wrote:
>> 
>> Takashi,
>> 
>> On Tue, May 13, 2014 at 03:25:57PM +0200, Takashi Iwai wrote:
>> > I think this has been already raised a few times, but I'm still
>> > dreaming one thing in our git management: having some metadata
>> > collection / link for each commit.
>> > 
>> > I don't mean for a thing like post-commit sign-off, but rather for
>> > tracking the information that has been revealed after commit, e.g. a
>> > regression the commit causes, the later fix commit, 
>> 
>> For the stuff flying by me, I've been adding the:
>> 
>> Fixes: <12-char hash>: ('Offending patch subject')
>> 
>> On patches fixing a regression.  It helps the stable team (when Cc
>> stable is also added) and in your scenario, you could grep the commits
>> for the result of your bisect.
> 
> Yeah, that was suggested in the last year's KS, and helps some cases.
> 
> However, the problem is that people(*1) often notice this too late
> after the tree has been already published.  Also, some information
> (e.g. bug reports) can come only after commits.

It is possible to use "git notes" or even "git replace" to add
information to existing commits.

> (*1) statistics taken from one person :)
> 
> And, for bisection, we need some reverse mapping for efficiency.
> It'd take time to look all commit logs from each revlist, especially
> if the bisection is done for the early history.
> 
> I tried a hackish way once ago: keeping simple text files named with
> $SHAID in a separate branch, and refers to it at git log or bisect
> time.  There must be much elegant way, I suppose, though.

Yeah, using "git replace" is more elegant. And there will be hopefully
soon the --edit option that will make it very easy to use git replace.

Best,
Christian.
