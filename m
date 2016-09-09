Return-Path: <alex.shi@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5F78E910
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 Sep 2016 15:22:07 +0000 (UTC)
Received: from mail-pf0-f177.google.com (mail-pf0-f177.google.com
	[209.85.192.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7499322A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 Sep 2016 15:22:06 +0000 (UTC)
Received: by mail-pf0-f177.google.com with SMTP id g202so30502466pfb.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 09 Sep 2016 08:22:06 -0700 (PDT)
To: Jan Kara <jack@suse.cz>, Guenter Roeck <linux@roeck-us.net>
References: <57C78BE9.30009@linaro.org> <20160905111105.GW3950@sirena.org.uk>
	<20160905140327.a6wgdl3lr42nlww4@thunk.org>
	<9895277.d39OTXtlqC@avalon>
	<20160906133429.5ktkvafprbtxr5sd@localhost>
	<20160906162502.GA15434@roeck-us.net>
	<20160907083312.GO28922@quack2.suse.cz>
From: Alex Shi <alex.shi@linaro.org>
Message-ID: <57D2D395.3020408@linaro.org>
Date: Fri, 9 Sep 2016 23:21:57 +0800
MIME-Version: 1.0
In-Reply-To: <20160907083312.GO28922@quack2.suse.cz>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [Stable kernel] feature backporting
 collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On 09/07/2016 04:33 PM, Jan Kara wrote:
> Well there are risks both way - updating to a newer kernel certainly has
> risks (otherwise our kernel team & QA wouldn't have to spend several months
> working on testing & tweaking the distro when creating new release based on
> the new kernel) and backporting has risks as well. You want to find a
> kernel version where the added risk from all the backports does not
> outweight the additional time for testing the kernel and generally
> stabilizing the product.
>  
> 								Honza

That's right. The feature backporting to LSK often has such judgment and
considerations. That's also the reason why LSK is more aggressive to use
(to push) newer LTS. We do prefer the upstream, but like many distros,
have to use relative newer LTS...
