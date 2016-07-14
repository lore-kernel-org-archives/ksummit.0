Return-Path: <alex.shi@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B16D1486
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Jul 2016 14:13:53 +0000 (UTC)
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2A56F13A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Jul 2016 14:13:53 +0000 (UTC)
Received: by mail-pa0-f44.google.com with SMTP id fi15so29079620pac.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Jul 2016 07:13:53 -0700 (PDT)
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
References: <1468058721.2557.9.camel@HansenPartnership.com>
	<0ED98206-0A66-48A4-B5A4-A0BC53FDBF05@primarydata.com>
	<1468114447.2333.12.camel@HansenPartnership.com>
	<A4E16736-A5CB-4915-9A02-82065AE2E062@primarydata.com>
	<1468115770.2333.15.camel@HansenPartnership.com>
	<CAPcyv4gQ+3aF+DhRVDioBD7O63VRDG+VAm3x0zVDDh4hg8kJig@mail.gmail.com>
	<718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<5785C80F.4030707@linaro.org> <20160713090739.GA18037@kroah.com>
	<578635F6.9040601@linaro.org> <20160714011905.GA20986@kroah.com>
	<57875FF1.7020206@linaro.org>
	<CAKv+Gu_QEpvP2UfChq1nCmoCw964pRCSkthU+md8zPXc2C+hqw@mail.gmail.com>
From: Alex Shi <alex.shi@linaro.org>
Message-ID: <57879E1C.4040206@linaro.org>
Date: Thu, 14 Jul 2016 23:13:48 +0900
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu_QEpvP2UfChq1nCmoCw964pRCSkthU+md8zPXc2C+hqw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On 07/14/2016 06:54 PM, Ard Biesheuvel wrote:
>
> Alex,
>
> I think Linaro's interpretation of a stable kernel is not very
> relevant for this discussion. arm64 support in the Linux kernel is not
> nearly as mature as support for the x86 architecture and other
> features and/or subsystems, and this is why we have the LSK, which
> consists of an otherwise stable kernel tree combined with more recent
> changes specific to the arm64 architecture and various SoCs and
> platforms that implement it.
>
> I think this discussion is more about regressions in production
> systems running stable kernels.

Yes, that's what am I talking.

I didn't propose LSK as a candidate for public industry stable kernel. 
LSK is a example to show there are much more feature needed by industry 
guys. Except the arm arch specific feature, there are still much of arch 
non-related feature required by our members, from QC, huawei, etc.

Yes, to enable all required feature will make stable kernel very big. 
LSK also has this problem. The solution for LSK is to isolated each of 
feature on separate branch, and do testing on the everything merged 
mainline. It can give user a flexible choice -- to pick up just needed 
features, while keep as much as testing insurance --  If the feature 
requests are kind of common, the collaboration is good to save all guys time
