Return-Path: <alex.shi@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3356A98D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 Sep 2016 15:06:26 +0000 (UTC)
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2AE2AAF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 Sep 2016 15:06:25 +0000 (UTC)
Received: by mail-pa0-f46.google.com with SMTP id id6so29208941pad.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 09 Sep 2016 08:06:25 -0700 (PDT)
To: Catalin Marinas <catalin.marinas@arm.com>,
	Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
References: <57C78BE9.30009@linaro.org> <9895277.d39OTXtlqC@avalon>
	<20160906133429.5ktkvafprbtxr5sd@localhost>
	<2181684.5VzIQ6DWv4@amdc1976>
	<20160907093250.qmmcmrq2g64rjmif@localhost>
From: Alex Shi <alex.shi@linaro.org>
Message-ID: <57D2CFE9.2060809@linaro.org>
Date: Fri, 9 Sep 2016 23:06:17 +0800
MIME-Version: 1.0
In-Reply-To: <20160907093250.qmmcmrq2g64rjmif@localhost>
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



On 09/07/2016 05:32 PM, Catalin Marinas wrote:
> Trying to get on-topic: where organisations providing kernels like LSK
> (Linaro) can help is offering to integrate/maintain the SoC back-port
> while encouraging the SoC vendors to focus on developing against the
> latest upstream. It looks to me that on (too) many occasions SoC vendors
> take LSK as their development base for new SoC ports, making the
> forward-porting effort significantly larger (and potentially ignored).

W or w/o LSK, vendor are going to hang on android kernel which also base
on LTS. On the other side, this collaboration will save much of separate
work time, then give them more time on long term upstream work. I saw
this thing happens in linaro members.
