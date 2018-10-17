Return-Path: <shuah@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 751C63325
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Oct 2018 15:32:55 +0000 (UTC)
Received: from mailout.easymail.ca (mailout.easymail.ca [64.68.200.34])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D0A41810
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Oct 2018 15:32:54 +0000 (UTC)
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
References: <1539701820.2805.6.camel@HansenPartnership.com>
	<1539702015.2805.10.camel@HansenPartnership.com>
From: Shuah Khan <shuah@kernel.org>
Message-ID: <eb2ecb2b-7087-d516-b3c5-5e5a09a1f1da@kernel.org>
Date: Wed, 17 Oct 2018 09:32:49 -0600
MIME-Version: 1.0
In-Reply-To: <1539702015.2805.10.camel@HansenPartnership.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: linux-kernel <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH v3 3/3] code-of-conduct: Add back the
 TAB as the central reporting point
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 10/16/2018 09:00 AM, James Bottomley wrote:
> Add a Reporting section where the Enforcement section used to be.  The
> intention is still to debate what should go here, but in the meantime, this
> gives us back the central reporting point we had in the old code of conflict.
> 
> Reviewed-by: Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
> Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>
> Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Signed-off-by: James Bottomley <James.Bottomley@HansenPartnership.com>
> 
> ---
> 
> v2: Added this patch to allay concerns we were stripping the reporting
>     mechanism entirely.
> v3: Add (where required by law) as a qualifier to the confidentiality
>     requirement
> ---
>  Documentation/process/code-of-conduct.rst | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/Documentation/process/code-of-conduct.rst b/Documentation/process/code-of-conduct.rst
> index 4dd90987305b..eec768471a4d 100644
> --- a/Documentation/process/code-of-conduct.rst
> +++ b/Documentation/process/code-of-conduct.rst
> @@ -59,6 +59,17 @@ address, posting via an official social media account, or acting as an appointed
>  representative at an online or offline event. Representation of a project may be
>  further defined and clarified by project maintainers.
>  
> +Reporting
> +=========
> +
> +Instances of abusive, harassing, or otherwise unacceptable behavior may be
> +reported by contacting the Technical Advisory Board (TAB) at
> +<tab@lists.linux-foundation.org>. All complaints will be reviewed and
> +investigated and will result in a response that is deemed necessary and
> +appropriate to the circumstances. The TAB is obligated to maintain
> +confidentiality with regard to the reporter of an incident (except where
> +required by law).
> +
>  Attribution
>  ===========
>  
> 
Acked-by : Shuah Khan <shuah@kernel.org>

thanks,
-- Shuah
