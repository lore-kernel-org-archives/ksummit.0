Return-Path: <chriscool@tuxfamily.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C4B3C4C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 May 2014 06:37:22 +0000 (UTC)
Received: from mail-2y.bbox.fr (mail-2y.bbox.fr [194.158.98.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id D9E5620343
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 May 2014 06:37:21 +0000 (UTC)
Date: Tue, 20 May 2014 08:37:18 +0200 (CEST)
Message-Id: <20140520.083718.1120287675734863722.chriscool@tuxfamily.org>
To: tiwai@suse.de
From: Christian Couder <chriscool@tuxfamily.org>
In-Reply-To: <s5hfvk5dhgs.wl%tiwai@suse.de>
References: <s5h1tvuf4ov.wl%tiwai@suse.de>
	<20140518.212315.1001026942354195075.chriscool@tuxfamily.org>
	<s5hfvk5dhgs.wl%tiwai@suse.de>
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

> At Sun, 18 May 2014 21:23:15 +0200 (CEST),
> Christian Couder wrote:
>> 
>> From: Takashi Iwai <tiwai@suse.de>
>> >
>> > At Thu, 15 May 2014 23:07:08 -0400,
>> > Jason Cooper wrote:
>> >> 
>> >> Takashi,
>> >> 
>> >> On Tue, May 13, 2014 at 03:25:57PM +0200, Takashi Iwai wrote:
>> >> > I think this has been already raised a few times, but I'm still
>> >> > dreaming one thing in our git management: having some metadata
>> >> > collection / link for each commit.
>> >> > 
>> >> > I don't mean for a thing like post-commit sign-off, but rather for
>> >> > tracking the information that has been revealed after commit, e.g. a
>> >> > regression the commit causes, the later fix commit, 
>> >> 
>> >> For the stuff flying by me, I've been adding the:
>> >> 
>> >> Fixes: <12-char hash>: ('Offending patch subject')
>> >> 
>> >> On patches fixing a regression.  It helps the stable team (when Cc
>> >> stable is also added) and in your scenario, you could grep the commits
>> >> for the result of your bisect.
>> > 
>> > Yeah, that was suggested in the last year's KS, and helps some cases.
>> > 
>> > However, the problem is that people(*1) often notice this too late
>> > after the tree has been already published.  Also, some information
>> > (e.g. bug reports) can come only after commits.
>> 
>> It is possible to use "git notes" or even "git replace" to add
>> information to existing commits.
> 
> Yes, I know of git-notes, as already mentioned in the first post.  But
> the problem is that publishing and importing git-notes changes isn't
> well established for kernel git tree management.  And, IIRC, Linus
> didn't like its usage somehow.  Not sure whether it's because of
> git-notes technical design or its concept...

Maybe Linus just doesn't want to be bothered with maintaining
notes/replace refs in his git repos. But these refs could be
maintained by other people in other repos.

>> > (*1) statistics taken from one person :)
>> > 
>> > And, for bisection, we need some reverse mapping for efficiency.
>> > It'd take time to look all commit logs from each revlist, especially
>> > if the bisection is done for the early history.
>> > 
>> > I tried a hackish way once ago: keeping simple text files named with
>> > $SHAID in a separate branch, and refers to it at git log or bisect
>> > time.  There must be much elegant way, I suppose, though.
>> 
>> Yeah, using "git replace" is more elegant. And there will be hopefully
>> soon the --edit option that will make it very easy to use git replace.
> 
> We don't want to change the history at all.

What I understood is that you want to be able to bisect on a history
where many bugs that prevent testing can easily be fixed.

Using git replace, it can go like this:

- a developer learns that some part of the history can be fixed to
  bisect more easily by applying a patch,

- the developer recreates a part of the history where the patch has
  been applied (using git cherry-pick or git rebase -i for example)

- the developer uses git replace to create a replace ref so that the
  new part of the history is used instead of the old one

- the developer pushes this new replace ref to a common repo where
  replace refs are shared (this pushes the new part of the history
  too)

- other developers fetch the replace refs from the common repo before
  they bisect

- when these other developers bisect, the new parts of the history are
  automatically used, so bisecting is faster, easier and maybe safer
  too

I think that it is better than when everyone changes the history
manually by applying patches in the middle of a bisection.

> A preferred option is
> just addendum on top of the existing commits, and the way to easily
> share the change (at best with the normal git pull).  If git-replace
> provides such a good integration, I'd love to see it in our use case.

git notes is probably better if what you want is only addendum on top
of the existing commits. git notes creates notes refs that you can
easily share.

Best,
Christian.
