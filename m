Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6C499CDA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 20:41:16 +0000 (UTC)
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com
	[209.85.214.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EE412CE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 20:41:15 +0000 (UTC)
Received: by mail-it0-f44.google.com with SMTP id x12so3878459itb.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 13:41:15 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <20170627135839.GB1886@jagdpanzerIV.localdomain>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
From: Kees Cook <keescook@chromium.org>
Date: Tue, 27 Jun 2017 13:41:14 -0700
Message-ID: <CAGXu5jJWH2cUnr5yiYS90SzROa3coZcgeRKEYOYYwhLUK8aPtw@mail.gmail.com>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org, Michal Hocko <mhocko@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] is Kconfig a bit hard sometimes?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jun 27, 2017 at 6:58 AM, Sergey Senozhatsky
<sergey.senozhatsky.work@gmail.com> wrote:
> Hello,
>
> am I the only one who struggle with the Kconfig sometimes? can there
> be a way to make it more general/simpler, in some parts at least? e.g.
> the hardening effort? (just an example. *ABSOLUTELY NOT* blaming Kess
> or anyone else who is involved, that's not the point, they are doing
> great job, no doubt. it's just the most recent thing I saw was
> CONFIG_SLAB_MERGE_DEFAULT). do people who really want to harden their
> kernels go all-in anyway (enable all of the options at once)? if so,
> can there be a single Kconfig option then? just curious.

We've removed failed "single Kconfig options" in the past (e.g.
CONFIG_EXPERIMENTAL), so I'm not excited about trying that again. I
agree with Linus, though, Kconfig is still a mess.

As for why I think CONFIG_HARDENED specifically wouldn't work is
because of distro tolerances for security features. Some things are
"too much" for them (e.g. slab sanitization), but they want things
with lower overhead (e.g. hardened usercopy). And if one feature is
going to be under CONFIG_HARDENED, but not the other, then why not? Do
we then need CONFIG_HARDENED_A_LITTLE and CONFIG_HARDENED_PARANOID?
And then that'll get bike-shed too. Ultimately providing granularity
appears to be better than not providing it, but we still end up with
the mess that in Kconfig... :(

(I see mention of "make def..." in other replies, I'll comment there next...)

-Kees

-- 
Kees Cook
Pixel Security
