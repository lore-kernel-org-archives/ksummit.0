Return-Path: <keescook@chromium.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0AAC22339
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Oct 2018 20:58:18 +0000 (UTC)
Received: from mail-yb1-f194.google.com (mail-yb1-f194.google.com
	[209.85.219.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 72A06623
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Oct 2018 20:58:17 +0000 (UTC)
Received: by mail-yb1-f194.google.com with SMTP id g15-v6so8053767ybf.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Oct 2018 13:58:17 -0700 (PDT)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com.
	[209.85.219.181]) by smtp.gmail.com with ESMTPSA id
	s15-v6sm2669878ywa.62.2018.10.15.13.58.14
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 15 Oct 2018 13:58:14 -0700 (PDT)
Received: by mail-yb1-f181.google.com with SMTP id e190-v6so8047412ybb.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Oct 2018 13:58:14 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1539202115.12644.9.camel@HansenPartnership.com>
References: <1539202053.12644.8.camel@HansenPartnership.com>
	<1539202115.12644.9.camel@HansenPartnership.com>
From: Kees Cook <keescook@chromium.org>
Date: Mon, 15 Oct 2018 13:58:13 -0700
Message-ID: <CAGXu5jLmpB1t1DFNeUj3chGv6EiEuNHXnFXFshEKAqPokA5X9w@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [PATCH v2 1/3] code-of-conduct: Fix the
 ambiguity about collecting email addresses
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Oct 10, 2018 at 1:08 PM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
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
> Fixes: 8a104f8b5867c682 ("Code of Conduct: Let's revamp it.")
> Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Acked-by: Shuah Khan <shuah@kernel.org>
> Acked-by: Guenter Roeck <linux@roeck-us.net>
> Reviewed-by: Alan Cox <alan@llwyncelyn.cymru>
> Reviewed-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> Signed-off-by: James Bottomley <James.Bottomley@HansenPartnership.com>

Acked-by: Kees Cook <keescook@chromium.org>

-Kees

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
>
> --
> 2.13.7
>



--=20
Kees Cook
Pixel Security
