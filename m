Return-Path: <axboe@kernel.dk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7F056B9E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 19:45:52 +0000 (UTC)
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1C8422AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 19:45:52 +0000 (UTC)
Received: by mail-io0-f169.google.com with SMTP id o22so36677867iod.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 12:45:52 -0700 (PDT)
To: Linus Torvalds <torvalds@linux-foundation.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<s5hd1c9wl4b.wl-tiwai@suse.de>
	<CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>
	<20188905.kHbMkj7sB6@avalon>
	<CA+55aFxFyX-6y0MH2QivC+GAVThEFNHVKc3DBZJzDBc9JU_nCQ@mail.gmail.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <17749486-d4e0-bbf5-bf46-735bd3b3d15a@kernel.dk>
Date: Wed, 19 Apr 2017 13:45:48 -0600
MIME-Version: 1.0
In-Reply-To: <CA+55aFxFyX-6y0MH2QivC+GAVThEFNHVKc3DBZJzDBc9JU_nCQ@mail.gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>, Doug Ledford <dledford@redhat.com>,
	David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 04/19/2017 01:40 PM, Linus Torvalds wrote:
> On Wed, Apr 19, 2017 at 12:25 PM, Laurent Pinchart
> <laurent.pinchart@ideasonboard.com> wrote:
>>
>> Agreed, for a maintainer summit to be useful, we need to have multiple sides
>> present. Gathering core maintainers with key representatives of the downstream
>> communities around the table is great, but I think we would be missing one
>> category whose opinion is equally important: kernel developers.
>>
>> When everything goes well developers can be represented by their maintainers.
>> That's the case where the process flows smoothly, so there isn't likely to be
>> much to discuss. However, problems occurring in the maintenance process are
>> likely to result in, if not conflicts, at least different views between
>> maintainers and developers, in which case developers won't be represented at
>> the summit.
>>
>> I'm not sure how to handle that. I certainly don't want to increase the number
>> of attendees to include key representatives of developers (and while I'd be
>> very curious to see how they would be selected, I doubt it would work in
>> practice), but I also believe we need to address this class of maintainership
>> issues.
> 
> I do agree that it would be a great thing to have a "bitch at
> maintainers" session where developers get to vent frustration at how
> their patches are (or are _not_) accepted by maintainers.
> 
> I know we've had issues in the VFS layer, with Al sometimes
> effectively dropping off the intenet for a time, for example.  And I'm
> sure it happens elsewhere too, I'm just aware of the VFS side because
> it's one of the areas where I end up personally being a secondary
> maintainer.
> 
> But the problem with that "bitch at maintainers" thing is that I can't
> for the life of me come up with a sane small set of people to do that.
> So I don't see it happening ;(
> 
> Anyway, I have tried to gather "other groups" that aren't in that
> top-10 maintainers list, but are examples of people "around" the
> maintenance issues:
> 
>  - stable and linux-next:
> 
>    Ben Hutchings (stable)
>    Stephen Rothwell (linux-next)
> 
>  - Infrastructure:
> 
>    Konstantin Ryabitsev (k.org)
>    Fengguang Wu (kernel test robot)
>    Steven Rostedt (ktest)
>    Shuah Khan (tools/testing)
>    Thorsten Leemhuis (regression tracking)
>    Jonathan Corbet (documentation)
> 
>  - Security:
> 
>    Andy Lutomirski (security and core)
>    Kees Cook (security)
>    James Morris (security subsystem)
> 
>  - distro people:
> 
>    Laura Abbott (Fedora)
>    Jiri Kosina (MM? JM?) (Suse)
>    Rom Lemarchand (Android)
> 
>  - Hw vendor people?
>  - Sponsor people?
> 
> but I can't come up with a sane set of "leaf developers" or anything
> like that. We've just got too many. That's obviously a good problem to
> have, but it doesn't fit with the maintainer summit, because unless
> somebody can come up with some kind of prototypical spokesperson for
> that group (and to me, that doesn't seem likely), I don't see how to
> do it.
> 
> (And I still suspect that we do want coverage of some remaining
> maintainership areas, ie filesystem and block layer, because the
> "top-10 maintainers" don't cover that at all. And I haven't heard
> suggestions for the networking side either, still assuming that Daem
> isn't interested since he never has been before..)

I haven't piped up yet, but the block layer was represented in your
initial top-20 (or something like that) list. I can attend if you want
representation on that side.

I'll also mention that upstream kernel users aren't "just" distros.
Facebook is a large consumer of upstream, and we feed everything we do
back as well. I suspect we have at least as many users (or more) than
some of the distros :-)

-- 
Jens Axboe
