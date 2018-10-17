Return-Path: <frowand.list@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EF8442C14
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Oct 2018 02:10:41 +0000 (UTC)
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7BCE9712
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Oct 2018 02:10:41 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id g2-v6so11726661pgu.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Oct 2018 19:10:41 -0700 (PDT)
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
References: <1539701820.2805.6.camel@HansenPartnership.com>
	<1539701896.2805.7.camel@HansenPartnership.com>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <e332116b-62e8-9930-c263-d022edb5828e@gmail.com>
Date: Tue, 16 Oct 2018 19:10:39 -0700
MIME-Version: 1.0
In-Reply-To: <1539701896.2805.7.camel@HansenPartnership.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Cc: linux-kernel <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH v3 1/3] code-of-conduct: Fix the
 ambiguity about collecting email addresses
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 10/16/18 07:58, James Bottomley wrote:
> The current code of conduct has an ambiguity in the it considers publishing
> private information such as email addresses unacceptable behaviour.  Since
> the Linux kernel collects and publishes email addresses as part of the patch
> process, add an exception clause for email addresses ordinarily collected by
> the project to correct this ambiguity.
> 
> Fixes: 8a104f8b5867c682 ("Code of Conduct: Let's revamp it.")
> Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Acked-by: Shuah Khan <shuah@kernel.org>
> Acked-by: Guenter Roeck <linux@roeck-us.net>
> Reviewed-by: Alan Cox <alan@llwyncelyn.cymru>
> Reviewed-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> Acked-by: "Eric W. Biederman" <ebiederm@xmission.com>
> Acked-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: James Bottomley <James.Bottomley@HansenPartnership.com>
> ---
>  Documentation/process/code-of-conduct.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/process/code-of-conduct.rst b/Documentation/process/code-of-conduct.rst
> index ab7c24b5478c..aa40e34e7785 100644
> --- a/Documentation/process/code-of-conduct.rst
> +++ b/Documentation/process/code-of-conduct.rst
> @@ -31,7 +31,7 @@ Examples of unacceptable behavior by participants include:
>  * Trolling, insulting/derogatory comments, and personal or political attacks
>  * Public or private harassment
>  * Publishing others’ private information, such as a physical or electronic
> -  address, without explicit permission
> +  address not ordinarily collected by the project, without explicit permission
>  * Other conduct which could reasonably be considered inappropriate in a
>    professional setting
>  
> 

Repeating my comment on version 1:

My understanding of the concern behind this change is that we should be
able to use an email address for the current development practices, such
as Reported-by, Suggested-by, etc tags when the email address was
provided in what is a public space for the project.  The public space
is visible to anyone in the world who desires to access it.

I do not understand how "ordinarily collected by the project" is equivalent
to "an email address that was provided in a public space for the project".
Ordinarily collected could include activities that can be expected to be
private and not visible to any arbitrary person in the world.

My issue is with the word choice.  I agree with the underlying concept.

-Frank
