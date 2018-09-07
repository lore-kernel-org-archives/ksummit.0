Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 685F1E6B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 08:04:53 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D92148B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 08:04:52 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: Takashi Iwai <tiwai@suse.de>, Kees Cook <keescook@chromium.org>
In-Reply-To: <s5h36ulrdps.wl-tiwai@suse.de>
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
	<20180906094158.1eba4f50@canb.auug.org.au>
	<20180905222437.5d2a1730@vmware.local.home>
	<CAGXu5jKfbVUcyGu6U1dVR8dKjGK0sY7=pLdmYXUC9_G8KmgZ0A@mail.gmail.com>
	<20180907091842.6c55bd9a@canb.auug.org.au>
	<CAGXu5jKQJfeOmTRBXB7ofW1iH6FNGROnSZzYdpG=H_Hu8zep=w@mail.gmail.com>
	<s5h36ulrdps.wl-tiwai@suse.de>
Date: Fri, 07 Sep 2018 11:04:16 +0300
Message-ID: <87zhwtybr3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] API
	replacement/deprecation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 07 Sep 2018, Takashi Iwai <tiwai@suse.de> wrote:
> On Fri, 07 Sep 2018 01:24:03 +0200,
> Kees Cook wrote:
>> 
>> On Thu, Sep 6, 2018 at 4:18 PM, Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>> > Hi Kees,
>> >
>> > On Thu, 6 Sep 2018 11:24:11 -0700 Kees Cook <keescook@chromium.org> wrote:
>> >>
>> >> If there was an agreement by all maintainers that deprecated
>> >> functions/patterns should not be added, and we documented the
>> >> deprecation somewhere like Documentation/process/deprecated.rst, then
>> >> we could make the declaration that if such functions got added (it's
>> >> easy to mechanically check for them), it would be the responsibility
>> >> of the author and maintainer chain to see that it got fixed before the
>> >> release is cut. We already have this for things like "breaks the x86
>> >> allmodconfig build" or similar. The checking would be manual, and the
>> >> enforcement would be by agreement, but it'd be better than the kind of
>> >> "please don't do this" hand-waving we've had in the past.
>> >
>> > I could do this in linux-next, of course, the same way I check for
>> > missing signed-off-bys.  All I would need is the list of deprecated
>> > things.
>> 
>> Hopefully we can all agree on deprecating strcpy() and strncpy() in
>> favor of strscpy()?
>
> How about providing some lightweight check script for git commit hook,
> and let each maintainer install it? 

I looked up 771c035372a0 ("deprecate the '__deprecated' attribute
warnings entirely and for good"). It's easy to agree that's the right
thing to do for the regular build.

However, I think there's value in having __deprecated tagged to
functions. (Note, just that, without defining it as
__attribute__((deprecated)).) People looking the functions up can see
they should find alternatives, and people looking for things to do could
take on the conversion. I don't think a separate deprecated file will
work. It's all too detached.

Then you can just use -D__deprecated=__attribute__((deprecated)) to get
the warnings when you like, even on a per module/file basis, or add that
to W=<some level>, or add that to 0-day or whatever CI, ensuring patches
aren't adding new warnings.

No need to invent wheels for things where the compiler can help.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
