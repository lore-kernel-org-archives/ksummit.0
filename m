Return-Path: <dmitry.torokhov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D6CC29C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 16:08:10 +0000 (UTC)
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 573AF251
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 16:08:10 +0000 (UTC)
Received: by mail-vk0-f52.google.com with SMTP id j126so107432288vkg.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 09:08:10 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <87shvbb65w.fsf@notabene.neil.brown.name>
References: <20160714031753.GA28722@kroah.com>
	<20160714100603.GJ9976@sirena.org.uk>
	<20160715002239.GA31603@kroah.com> <5788337F.8000500@roeck-us.net>
	<20160715014103.GA5791@kroah.com> <578850EB.3090109@roeck-us.net>
	<20160715042938.GA5527@kroah.com>
	<874m7rcus8.fsf@notabene.neil.brown.name>
	<1468564337.2420.37.camel@HansenPartnership.com>
	<871t2vcrle.fsf@notabene.neil.brown.name>
	<20160715073650.GB39664@dtor-ws>
	<87shvbb65w.fsf@notabene.neil.brown.name>
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Date: Fri, 15 Jul 2016 09:08:08 -0700
Message-ID: <CAKdAkRQgK3agi2n5A1-XJYR3Zo_SCQXVGbwtXSmrR3y-_j4n2Q@mail.gmail.com>
To: NeilBrown <neilb@suse.com>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 15, 2016 at 2:29 AM, NeilBrown <neilb@suse.com> wrote:
> On Fri, Jul 15 2016, Dmitry Torokhov wrote:
>
>> On Fri, Jul 15, 2016 at 05:01:33PM +1000, NeilBrown wrote:
>>> On Fri, Jul 15 2016, James Bottomley wrote:
>>>
>>> > On Fri, 2016-07-15 at 15:52 +1000, NeilBrown wrote:
>>> >> I do find quilt useful when backporting a series of patches so that I
>>> >> can resolve the conflicts on each patch individually and move
>>> >> backwards and forwards through the list of patches.  I don't think
>>> >> git has an easy way to store a branch of patches-that-I-need-to-apply
>>> >> and to then give me one at a time, removing them from the branch.  I
>>> >> could use 'stgit' for that if necessary, though it is very tempting
>>> >> to write something that is better integrated with git.
>>> >
>>> > Git cherry and git cherry-pick can do this.  Git cherry-pick can take a
>>> > range of patches to apply, so you can select a bunch of patches to
>>> > backport or otherwise move all at once.  Git cherry can tell you (to
>>> > within an approximation, since it uses matching) what patches are
>>> > common between two branches even if they have differing commit ids.
>>> >
>>> > The format is a bit frightening if you're not used to it, which is why
>>> > stgit may be a better user experience, but you can do it with basic
>>> > git.
>>>
>>> I wasn't aware of "git cherry".  It certainly could be useful, but based
>>> on the man page it would get confused by modifications made to resolve
>>> conflicts.
>>> If "get cherry-pick" auto-added an "upstream HASHID" line to the comment, and
>>
>> "git cherry-pick -x <commit>" does this.
>
>  From the man page
>      This is done only for cherry picks without conflicts.
>  making it fairly useless for my use-case.

That is man-page author's opinion, not something that is enforced by
the implementation. In fact, if there is a conflict it will
cherry-pick adds section

Conflicts:
        file1.c
        file2.c
        ...

We use "git cherry-pick -x" all the time in Chrome OS kernel tree to
document origin of patches.

Thanks.

-- 
Dmitry
