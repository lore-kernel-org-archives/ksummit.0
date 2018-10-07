Return-Path: <shuah@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 10A936918
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  7 Oct 2018 15:32:49 +0000 (UTC)
Received: from mailout.easymail.ca (mailout.easymail.ca [64.68.200.34])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7BEA2466
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  7 Oct 2018 15:32:48 +0000 (UTC)
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
References: <1538861738.4088.5.camel@HansenPartnership.com>
	<1538861851.4088.7.camel@HansenPartnership.com>
From: Shuah Khan <shuah@kernel.org>
Message-ID: <770159f5-ab59-1a59-4156-c2d92587444d@kernel.org>
Date: Sun, 7 Oct 2018 09:32:41 -0600
MIME-Version: 1.0
In-Reply-To: <1538861851.4088.7.camel@HansenPartnership.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Cc: linux-kernel <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH 2/2] code-of-conduct: Strip the
 enforcement paragraph pending community discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 10/06/2018 03:37 PM, James Bottomley wrote:
> Significant concern has been expressed about the responsibilities outlined in
> the enforcement clause of the new code of conduct.  Since there is concern
> that this becomes binding on the release of the 4.19 kernel, strip the
> enforcement clauses to give the community time to consider and debate how this
> should be handled.
> 
> Signed-off-by: James Bottomley <James.Bottomley@HansenPartnership.com>
> ---
>  Documentation/process/code-of-conduct.rst | 15 ---------------
>  1 file changed, 15 deletions(-)
> 
> diff --git a/Documentation/process/code-of-conduct.rst b/Documentation/process/code-of-conduct.rst
> index aa40e34e7785..4dd90987305b 100644
> --- a/Documentation/process/code-of-conduct.rst
> +++ b/Documentation/process/code-of-conduct.rst
> @@ -59,21 +59,6 @@ address, posting via an official social media account, or acting as an appointed
>  representative at an online or offline event. Representation of a project may be
>  further defined and clarified by project maintainers.
>  
> -Enforcement
> -===========
> -
> -Instances of abusive, harassing, or otherwise unacceptable behavior may be
> -reported by contacting the Technical Advisory Board (TAB) at
> -<tab@lists.linux-foundation.org>. All complaints will be reviewed and
> -investigated and will result in a response that is deemed necessary and
> -appropriate to the circumstances. The TAB is obligated to maintain
> -confidentiality with regard to the reporter of an incident.  Further details of
> -specific enforcement policies may be posted separately.
> -
> -Maintainers who do not follow or enforce the Code of Conduct in good faith may
> -face temporary or permanent repercussions as determined by other members of the
> -project’s leadership.
> -
>  Attribution
>  ===========
>  
> 

With the assumption that the enforcement details will be added later after community
discussion in upcoming releases.

Acked-by: Shuah Khan <shuah@kernel.org>

thanks,
-- Shuah
