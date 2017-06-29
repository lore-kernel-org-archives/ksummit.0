Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1578249F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 16:51:32 +0000 (UTC)
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 89F2916B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 16:51:31 +0000 (UTC)
Received: by mail-it0-f43.google.com with SMTP id m84so10661850ita.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 09:51:31 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <1498754169.2834.61.camel@HansenPartnership.com>
References: <CAGXu5j+bpi6-krTYwN_BdhFnHZRYpQwhtc9Z-kcRerm+t-Xyfw@mail.gmail.com>
	<1498754169.2834.61.camel@HansenPartnership.com>
From: Kees Cook <keescook@chromium.org>
Date: Thu, 29 Jun 2017 09:51:29 -0700
Message-ID: <CAGXu5jJ011-7JH7w4n0No=gon-jp4VTeN=0JPWaQsGh5zz79eA@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Developing across
 multiple areas of the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jun 29, 2017 at 9:36 AM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Wed, 2017-06-28 at 16:01 -0700, Kees Cook wrote:
>> For refcount_t, the conversions have been going per-maintainer, and
>> while this is likely the right way to do things, there are
>> dependencies that are crossing releases, which seems inefficient. For
>> example, obviously doing a refcount_t conversion requires the
>> refcount_t implementation first (which landed in v4.11), but then
>> later conversions wanted an option for a light implementation
>> (expected for v4.13), but in both cases most maintainers wanted the
>> implementations entirely landed, not just in -next (vast majority of
>> refcount_t conversions currently in the kernel landed in v4.12, so
>> the next wave will have to wait until v4.14 it seems). This appears
>> mostly to be about avoiding tree dependencies, IIUC, but is an
>> awfully slow way to do things.
>
> Given the performance concerns of the first implementation, this
> timetable and the interactions that went with it seem to be pretty much
> textbook correct, especially as none of the hot paths seemed
> susceptible to overflow attacks.
>
> Any other way would have produced a lot more friction: imagine if it
> had been done tree at once for 4.12 and then performance had tanked and
> we'd got reversions all over the place ... you'd be spending a lot more
> than a couple of kernel releases trying to persuade maintainers to take
> the new improved stuff.

Right, I've got no objection to the performance concerns and how that
played out, but it's API-to-conversion steps that seem inefficient.
E.g., instead of API 1 in v4.11, conversion wave 1 in v4.12, API 2 in
v4.13, conversion wave 2 in v4.14, it looks like tree dependencies was
the only reason we couldn't have had: API 1 and conversion wave 1 in
v4.11, API 2 and conversion wave 2 in v4.12 (e.g. btrfs couldn't
compile their tree with the API living in tip, so they had to wait
until the API was in a release).

-Kees

-- 
Kees Cook
Pixel Security
