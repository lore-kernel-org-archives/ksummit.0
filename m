Return-Path: <keescook@chromium.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 27A28D6A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 14:59:34 +0000 (UTC)
Received: from mail-yw1-f52.google.com (mail-yw1-f52.google.com
	[209.85.161.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BADD37D9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 14:59:33 +0000 (UTC)
Received: by mail-yw1-f52.google.com with SMTP id n21-v6so4178524ywh.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Sep 2018 07:59:33 -0700 (PDT)
Received: from mail-yw1-f46.google.com (mail-yw1-f46.google.com.
	[209.85.161.46]) by smtp.gmail.com with ESMTPSA id
	u196-v6sm1757614ywg.68.2018.09.06.07.59.31
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 06 Sep 2018 07:59:31 -0700 (PDT)
Received: by mail-yw1-f46.google.com with SMTP id n21-v6so4178482ywh.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Sep 2018 07:59:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAMuHMdXY0v_Q74dN9Qp=MM8BC9zi7XEsyKTQ1SiEAEoL_PBwrQ@mail.gmail.com>
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
	<CAMuHMdXY0v_Q74dN9Qp=MM8BC9zi7XEsyKTQ1SiEAEoL_PBwrQ@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
Date: Thu, 6 Sep 2018 07:59:30 -0700
Message-ID: <CAGXu5j+xf4RRWa_fTMUJmLdjqKF7b8vXXXyO4K-9XxfUqJKFVA@mail.gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
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

On Thu, Sep 6, 2018 at 3:11 AM, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Thu, Sep 6, 2018 at 12:57 AM Kees Cook <keescook@chromium.org> wrote:
>> I'd like to discuss ways that we could deprecate APIs more sanely. At
>> present I've seen (and used) two approaches, fast and slow:
>
>> Example: strscpy(), VLA removal
>
> I didn't know VLAs were a kernel API ;-)

I couldn't find a better short-hand that covered everything. "usage
patterns"? Whatever, people understand what I mean. :)

-Kees

-- 
Kees Cook
Pixel Security
