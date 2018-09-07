Return-Path: <arndbergmann@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4F460D2E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 20:30:25 +0000 (UTC)
Received: from mail-qt0-f171.google.com (mail-qt0-f171.google.com
	[209.85.216.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 68E4F7C7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 20:30:23 +0000 (UTC)
Received: by mail-qt0-f171.google.com with SMTP id t39-v6so17577835qtc.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 07 Sep 2018 13:30:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
	<20180906094158.1eba4f50@canb.auug.org.au>
	<20180905222437.5d2a1730@vmware.local.home>
	<CAGXu5jKfbVUcyGu6U1dVR8dKjGK0sY7=pLdmYXUC9_G8KmgZ0A@mail.gmail.com>
	<20180907091842.6c55bd9a@canb.auug.org.au>
	<CAGXu5jKQJfeOmTRBXB7ofW1iH6FNGROnSZzYdpG=H_Hu8zep=w@mail.gmail.com>
	<20180907143326.GM5098@thunk.org>
	<CAGXu5jJ9EP3UEWjyTJum0YM7=549kVcCOk5Jk_i+dt_B0SY+nQ@mail.gmail.com>
In-Reply-To: <CAGXu5jJ9EP3UEWjyTJum0YM7=549kVcCOk5Jk_i+dt_B0SY+nQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 7 Sep 2018 22:30:04 +0200
Message-ID: <CAK8P3a2F5Q0PEUR-0D287GkWHGpv3b6p65o95vdDhkWWX1rEWw@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
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

On Fri, Sep 7, 2018 at 6:12 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Fri, Sep 7, 2018 at 7:33 AM, Theodore Y. Ts'o <tytso@mit.edu> wrote:
> > On Thu, Sep 06, 2018 at 04:24:03PM -0700, Kees Cook wrote:
> >>
> >> Hopefully we can all agree on deprecating strcpy() and strncpy() in
> >> favor of strscpy()?
> >
> > There are some places where I use strncpy for a character array which
> > is *not* a null-terminated string.  What is the preferred alternative
> > for me?  I can suppress the problem when gcc complains about it using:
> >
> > +       __u8    s_first_error_func[32] __nonstring;     /* function where the error happened */
> >
> > But if we do a blanket deprecation, what should I use instead?
>
> strncpy() is a weird one. I think we can easily say "no strcpy()" but
> for strncpy() we need to examine the existing use-cases:
>
> - non-NUL-terminated: use memcpy?
> - NEEDS trailing NUL padding: ... no solution yet. invent strscpy_pad() ?
> - "safe" strcpy(): use strscpy()

I suspect that a lot of the cases that want NUL-padding also don't
want NUL-termination: when you store a string on disk in a fixed-length
record or transfer it over the network, you don't want to leak stack
data to the medium, but you also don't need the terminating character
because you know the maximum length already.

strncpy() does exactly the right thing for that case, it's just that
this pattern is now a corner case, and gcc tends to flag such
usage with a warning about missing termination (unless you
use __nonstring) but doesn't flag the more common usage when
it looks correct.

       Arnd
