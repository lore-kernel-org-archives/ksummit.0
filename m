Return-Path: <keescook@chromium.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C6A26DB3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 23:24:07 +0000 (UTC)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com
	[209.85.219.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 618C7786
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 23:24:07 +0000 (UTC)
Received: by mail-yb1-f176.google.com with SMTP id u33-v6so4798605ybi.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Sep 2018 16:24:07 -0700 (PDT)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com.
	[209.85.219.180]) by smtp.gmail.com with ESMTPSA id
	f82-v6sm2395961ywf.58.2018.09.06.16.24.05
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 06 Sep 2018 16:24:05 -0700 (PDT)
Received: by mail-yb1-f180.google.com with SMTP id d34-v6so4813238yba.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Sep 2018 16:24:05 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180907091842.6c55bd9a@canb.auug.org.au>
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
	<20180906094158.1eba4f50@canb.auug.org.au>
	<20180905222437.5d2a1730@vmware.local.home>
	<CAGXu5jKfbVUcyGu6U1dVR8dKjGK0sY7=pLdmYXUC9_G8KmgZ0A@mail.gmail.com>
	<20180907091842.6c55bd9a@canb.auug.org.au>
From: Kees Cook <keescook@chromium.org>
Date: Thu, 6 Sep 2018 16:24:03 -0700
Message-ID: <CAGXu5jKQJfeOmTRBXB7ofW1iH6FNGROnSZzYdpG=H_Hu8zep=w@mail.gmail.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
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

On Thu, Sep 6, 2018 at 4:18 PM, Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> Hi Kees,
>
> On Thu, 6 Sep 2018 11:24:11 -0700 Kees Cook <keescook@chromium.org> wrote:
>>
>> If there was an agreement by all maintainers that deprecated
>> functions/patterns should not be added, and we documented the
>> deprecation somewhere like Documentation/process/deprecated.rst, then
>> we could make the declaration that if such functions got added (it's
>> easy to mechanically check for them), it would be the responsibility
>> of the author and maintainer chain to see that it got fixed before the
>> release is cut. We already have this for things like "breaks the x86
>> allmodconfig build" or similar. The checking would be manual, and the
>> enforcement would be by agreement, but it'd be better than the kind of
>> "please don't do this" hand-waving we've had in the past.
>
> I could do this in linux-next, of course, the same way I check for
> missing signed-off-bys.  All I would need is the list of deprecated
> things.

Hopefully we can all agree on deprecating strcpy() and strncpy() in
favor of strscpy()?

-Kees

-- 
Kees Cook
Pixel Security
