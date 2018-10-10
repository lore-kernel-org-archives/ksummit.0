Return-Path: <konrad.wilk@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1F409D38
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 21:05:01 +0000 (UTC)
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A094577C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 21:05:00 +0000 (UTC)
Date: Wed, 10 Oct 2018 17:04:56 -0400
From: Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20181010210456.GB30366@char.us.oracle.com>
References: <1539202053.12644.8.camel@HansenPartnership.com>
	<1539202230.12644.12.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1539202230.12644.12.camel@HansenPartnership.com>
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [PATCH v2 3/3] code-of-conduct: Add back the
 TAB as the central reporting point
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Oct 10, 2018 at 01:10:30PM -0700, James Bottomley wrote:
> Add a Reporting section where the Enforcement section used to be.  The
> intention is still to debate what should go here, but in the meantime, this
> gives us back the central reporting point we had in the old code of conflict.
> 
Reviewed-by: Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>

Thank you!
> Signed-off-by: James Bottomley <James.Bottomley@HansenPartnership.com>
> 
> ---
> 
> v2: Added this patch to allay concerns we were stripping the reporting
>     mechanism entirely.
> ---
>  Documentation/process/code-of-conduct.rst | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/process/code-of-conduct.rst b/Documentation/process/code-of-conduct.rst
> index 4dd90987305b..2000bdc2a6ad 100644
> --- a/Documentation/process/code-of-conduct.rst
> +++ b/Documentation/process/code-of-conduct.rst
> @@ -59,6 +59,16 @@ address, posting via an official social media account, or acting as an appointed
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
> +confidentiality with regard to the reporter of an incident.
> +
>  Attribution
>  ===========
>  
> -- 
> 2.13.7
> 
