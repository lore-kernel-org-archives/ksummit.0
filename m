Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 95033E38
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  7 Oct 2018 09:05:01 +0000 (UTC)
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1552E466
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  7 Oct 2018 09:05:01 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id n5-v6so3364979ioh.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 07 Oct 2018 02:05:00 -0700 (PDT)
MIME-Version: 1.0
References: <1538861738.4088.5.camel@HansenPartnership.com>
	<1538861799.4088.6.camel@HansenPartnership.com>
In-Reply-To: <1538861799.4088.6.camel@HansenPartnership.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Sun, 7 Oct 2018 11:04:48 +0200
Message-ID: <CAKMK7uGvgttqL_RoXumd0F4w8UMqwaVODaMWnOZz5weSFzDJ2A@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [PATCH 1/2] code-of-conduct: Fix the
 ambiguity about collecting email addresses
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Oct 6, 2018 at 11:36 PM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
>
> From 4a614e9440148894207bef5bf69e74071baceb3b Mon Sep 17 00:00:00 2001
> From: James Bottomley <James.Bottomley@HansenPartnership.com>
> Date: Sat, 6 Oct 2018 14:21:56 -0700
> Subject: [PATCH 1/2] code-of-conduct: Fix the ambiguity about collecting =
email
>  addresses
>
> The current code of conduct has an ambiguity in the it considers publishi=
ng
> private information such as email addresses unacceptable behaviour.  Sinc=
e
> the Linux kernel collects and publishes email addresses as part of the pa=
tch
> process, add an exception clause for email addresses ordinarily collected=
 by
> the project to correct this ambiguity.
>
> Signed-off-by: James Bottomley <James.Bottomley@HansenPartnership.com>
> ---
>  Documentation/process/code-of-conduct.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/process/code-of-conduct.rst b/Documentation/pr=
ocess/code-of-conduct.rst
> index ab7c24b5478c..aa40e34e7785 100644
> --- a/Documentation/process/code-of-conduct.rst
> +++ b/Documentation/process/code-of-conduct.rst
> @@ -31,7 +31,7 @@ Examples of unacceptable behavior by participants inclu=
de:
>  * Trolling, insulting/derogatory comments, and personal or political att=
acks
>  * Public or private harassment
>  * Publishing others=E2=80=99 private information, such as a physical or =
electronic
> -  address, without explicit permission
> +  address not ordinarily collected by the project, without explicit perm=
ission
>  * Other conduct which could reasonably be considered inappropriate in a
>    professional setting

We've discussed this a bit with freedesktop.org people a while ago,
both from a CoC and privacy regulations pov, and we concluded that
attaching random people's emails in Reported-by: and similar lines,
without their consent, is indeed a problem. Bugzilla is rather
problematic in this way, since it looks like it's protecting your
email address and keeping it private, but then you can still just grab
it from the bugzilla emails without first asking for permission.
That's one of the reasons why fd.o admins want to retire Bugzilla in
favour of gitlab issues (where this is handled a lot more strictly).

What we discussed in the older thread here on ksummit-discuss is
making it clear that email addresses sent to public mailing lists are
considered public information, which I think is worth clarifying. But
what you're excempting here is anything collected without permission
in the past, which I don't think is a good wording. I've definitely
been skimping on the rules here in the past. At least in my
understanding of the legal situation, if you get a bug report through
a private channel, or at least a channel that hides private address
information (like Bugzilla does, albeit sloppily), then you do have to
ask for explicit consent to publishing that information.
-Daniel
--=20
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
