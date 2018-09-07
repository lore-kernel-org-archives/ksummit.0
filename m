Return-Path: <keescook@chromium.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6CA381271
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 16:10:44 +0000 (UTC)
Received: from mail-yb1-f196.google.com (mail-yb1-f196.google.com
	[209.85.219.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1170E786
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 16:10:43 +0000 (UTC)
Received: by mail-yb1-f196.google.com with SMTP id y20-v6so5628466ybi.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 07 Sep 2018 09:10:43 -0700 (PDT)
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com.
	[209.85.219.182]) by smtp.gmail.com with ESMTPSA id
	c126-v6sm3726536ywa.104.2018.09.07.09.10.41
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 07 Sep 2018 09:10:41 -0700 (PDT)
Received: by mail-yb1-f182.google.com with SMTP id t71-v6so5640033ybi.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 07 Sep 2018 09:10:41 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180907143326.GM5098@thunk.org>
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
	<20180906094158.1eba4f50@canb.auug.org.au>
	<20180905222437.5d2a1730@vmware.local.home>
	<CAGXu5jKfbVUcyGu6U1dVR8dKjGK0sY7=pLdmYXUC9_G8KmgZ0A@mail.gmail.com>
	<20180907091842.6c55bd9a@canb.auug.org.au>
	<CAGXu5jKQJfeOmTRBXB7ofW1iH6FNGROnSZzYdpG=H_Hu8zep=w@mail.gmail.com>
	<20180907143326.GM5098@thunk.org>
From: Kees Cook <keescook@chromium.org>
Date: Fri, 7 Sep 2018 09:10:39 -0700
Message-ID: <CAGXu5jJ9EP3UEWjyTJum0YM7=549kVcCOk5Jk_i+dt_B0SY+nQ@mail.gmail.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
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

On Fri, Sep 7, 2018 at 7:33 AM, Theodore Y. Ts'o <tytso@mit.edu> wrote:
> On Thu, Sep 06, 2018 at 04:24:03PM -0700, Kees Cook wrote:
>>
>> Hopefully we can all agree on deprecating strcpy() and strncpy() in
>> favor of strscpy()?
>
> There are some places where I use strncpy for a character array which
> is *not* a null-terminated string.  What is the preferred alternative
> for me?  I can suppress the problem when gcc complains about it using:
>
> +       __u8    s_first_error_func[32] __nonstring;     /* function where the error happened */
>
> But if we do a blanket deprecation, what should I use instead?

strncpy() is a weird one. I think we can easily say "no strcpy()" but
for strncpy() we need to examine the existing use-cases:

- non-NUL-terminated: use memcpy?
- NEEDS trailing NUL padding: ... no solution yet. invent strscpy_pad() ?
- "safe" strcpy(): use strscpy()

-Kees

-- 
Kees Cook
Pixel Security
