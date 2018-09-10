Return-Path: <keescook@chromium.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7329AF25
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 16:09:38 +0000 (UTC)
Received: from mail-yw1-f67.google.com (mail-yw1-f67.google.com
	[209.85.161.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E5E9C71C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 16:09:37 +0000 (UTC)
Received: by mail-yw1-f67.google.com with SMTP id n21-v6so8048558ywh.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 09:09:37 -0700 (PDT)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com.
	[209.85.219.178]) by smtp.gmail.com with ESMTPSA id
	d21-v6sm7095335ywb.16.2018.09.10.09.09.35
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 10 Sep 2018 09:09:36 -0700 (PDT)
Received: by mail-yb1-f178.google.com with SMTP id f145-v6so8151740ybg.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 09:09:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180910092814.085dcebd@coco.lan>
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
	<20180906094158.1eba4f50@canb.auug.org.au>
	<20180905222437.5d2a1730@vmware.local.home>
	<CAGXu5jKfbVUcyGu6U1dVR8dKjGK0sY7=pLdmYXUC9_G8KmgZ0A@mail.gmail.com>
	<20180907091842.6c55bd9a@canb.auug.org.au>
	<CAGXu5jKQJfeOmTRBXB7ofW1iH6FNGROnSZzYdpG=H_Hu8zep=w@mail.gmail.com>
	<20180910092814.085dcebd@coco.lan>
From: Kees Cook <keescook@chromium.org>
Date: Mon, 10 Sep 2018 09:09:33 -0700
Message-ID: <CAGXu5jLDw1fdwd9cmESQtBmr6oMEteYbT9R7+MG_PdfH52wZWQ@mail.gmail.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Content-Type: text/plain; charset="UTF-8"
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

On Mon, Sep 10, 2018 at 5:28 AM, Mauro Carvalho Chehab
<mchehab+samsung@kernel.org> wrote:
> Em Thu, 6 Sep 2018 16:24:03 -0700
> Kees Cook <keescook@chromium.org> escreveu:
>
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
> I suspect that that's the way to go for most use cases.
>
> In the case of media, I double-checked: 100% of the usages can be
> replaced by strscpy() [1]. I just sent a patchset for review with
> such changes.

Double-check the strncpy() uses: some may depend on the trailing NUL-padding.

> Yet, there are 104 occurrences of strncpy_from_user(). If they
> all do something similar, it could make sense to have a
> strscpy_from_user() function. If you're willing to do so,
> feel free to also convert av7110 to it.

Yeah. I think we need:

strscpy_pad()
memcpy_pad()
strscpy_from_user()

The strncpy uses are:

1- safer strcpy() (usually visible with leading/trailing "buf[size-1]=0")
2- padded strcpy() (to wipe the contents of a destination)
3- copy non-NUL-terminated array of characters

1 should use strscpy
2 needs a strscpy+trailing memset (e.g. strscpy_pad())
3 needs memcpy+trailing memset (e.g. memcpy_pad())

I suggest "memcpy_pad" to very clearly distinguish that it is not
NUL-terminated, but rather NUL-padded.

-Kees

-- 
Kees Cook
Pixel Security
