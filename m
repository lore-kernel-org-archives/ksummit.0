Return-Path: <frowand.list@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 69457D05
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 20:48:46 +0000 (UTC)
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0FF914DA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 20:48:45 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id g2-v6so3049429pgu.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 13:48:45 -0700 (PDT)
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
References: <1538861738.4088.5.camel@HansenPartnership.com>
	<1538861799.4088.6.camel@HansenPartnership.com>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <b1f8939a-220f-b99f-8def-cb2a6551dead@gmail.com>
Date: Wed, 10 Oct 2018 13:48:43 -0700
MIME-Version: 1.0
In-Reply-To: <1538861799.4088.6.camel@HansenPartnership.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Cc: linux-kernel <linux-kernel@vger.kernel.org>
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

On 10/06/18 14:36, James Bottomley wrote:
> From 4a614e9440148894207bef5bf69e74071baceb3b Mon Sep 17 00:00:00 2001
> From: James Bottomley <James.Bottomley@HansenPartnership.com>
> Date: Sat, 6 Oct 2018 14:21:56 -0700
> Subject: [PATCH 1/2] code-of-conduct: Fix the ambiguity about collecting email
>  addresses
> 
> The current code of conduct has an ambiguity in the it considers publishing
> private information such as email addresses unacceptable behaviour.  Since
> the Linux kernel collects and publishes email addresses as part of the patch
> process, add an exception clause for email addresses ordinarily collected by
> the project to correct this ambiguity.
> 
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
