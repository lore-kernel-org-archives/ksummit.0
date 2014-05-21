Return-Path: <chriscool@tuxfamily.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8CC1299D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 05:36:29 +0000 (UTC)
Received: from mail-3y.bbox.fr (mail-3y.bbox.fr [194.158.98.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 6B1BC1F940
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 05:36:27 +0000 (UTC)
Date: Wed, 21 May 2014 07:36:24 +0200 (CEST)
Message-Id: <20140521.073624.2203336639003326118.chriscool@tuxfamily.org>
To: tiwai@suse.de
From: Christian Couder <chriscool@tuxfamily.org>
In-Reply-To: <s5hha4l53qb.wl%tiwai@suse.de>
References: <s5hfvk5dhgs.wl%tiwai@suse.de>
	<20140520.083718.1120287675734863722.chriscool@tuxfamily.org>
	<s5hha4l53qb.wl%tiwai@suse.de>
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
> At Tue, 20 May 2014 08:37:18 +0200 (CEST),
> Christian Couder wrote:
>> 
>> From: Takashi Iwai <tiwai@suse.de>
>> 
>> > We don't want to change the history at all.
>> 
>> What I understood is that you want to be able to bisect on a history
>> where many bugs that prevent testing can easily be fixed.
> 
> Well, the bisection is just an example where the extra metadata would
> help.  It's not the purpose itself.
> 
>> 
>> Using git replace, it can go like this:
>> 
>> - a developer learns that some part of the history can be fixed to
>>   bisect more easily by applying a patch,
>> 
>> - the developer recreates a part of the history where the patch has
>>   been applied (using git cherry-pick or git rebase -i for example)
>> 
>> - the developer uses git replace to create a replace ref so that the
>>   new part of the history is used instead of the old one
>> 
>> - the developer pushes this new replace ref to a common repo where
>>   replace refs are shared (this pushes the new part of the history
>>   too)
>> 
>> - other developers fetch the replace refs from the common repo before
>>   they bisect
>> 
>> - when these other developers bisect, the new parts of the history are
>>   automatically used, so bisecting is faster, easier and maybe safer
>>   too
>> 
>> I think that it is better than when everyone changes the history
>> manually by applying patches in the middle of a bisection.
> 
> This is nice, but I'm not sure whether it'll work / suit well with a
> tree like kernel, which is the results of tons of merges from various
> maintainers.  I guess little maintainers would publish the corrected
> repo.  I hope my guess is wrong.

Yeah, I don't know if it's easy enough to redo many merges with
current Git. On the other hand, I don't see why it couldn't be made
easy if it isn't already.

About maintainers publishing the corrected/improved repo, I think if a
few developers publish one that provide some benefits, and come up
with a way/workflow to do so quite easily, then other will follow.

>> > A preferred option is
>> > just addendum on top of the existing commits, and the way to easily
>> > share the change (at best with the normal git pull).  If git-replace
>> > provides such a good integration, I'd love to see it in our use case.
>> 
>> git notes is probably better if what you want is only addendum on top
>> of the existing commits. git notes creates notes refs that you can
>> easily share.
> 
> IMO, it's not that easy to share git notes.  At least, it's not in the
> same level as sharing tags.  If it were as easy as tags, I see no
> reason to avoid using git-notes.  That said, having a separate refs
> that requires the extra non-standard step looks like a big obstacle.

I don't see why it is not easy to share git notes.

Basically I think that you just need to add refspecs like

	  push = +refs/notes/*:refs/notes/*

or

	  fetch = +refs/notes/*:refs/notes/*

in your config file, in the sections of the remotes you want to push
or fetch notes.

But we should probably CC Johan Herland <johan@herland.net> or Junio
when discussing this as I don't know notes well.

Best,
Christian.
