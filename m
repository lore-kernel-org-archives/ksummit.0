Return-Path: <jcm@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7169FE92
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 16:01:00 +0000 (UTC)
Received: from mx1.redhat.com (mx3-rdu2.redhat.com [66.187.233.73])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F2EE0803
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 16:00:59 +0000 (UTC)
To: Sean Paul <seanpaul@chromium.org>, Linus Walleij <linus.walleij@linaro.org>
References: <CABVU7+vBVivOZ32aEokJ0y3=C2z0Ev12O3vSVfyTC9TDrBOr8A@mail.gmail.com>
	<20180905042246.GA2977@mtr-leonro.mtl.com>
	<CABVU7+u+F1CXAW48_XfhLy59BOTxAS-qa_pG4Xjkki=f4Rr9Kg@mail.gmail.com>
	<20180905074840.GB29052@kroah.com>
	<CAKMK7uEJfgACdzLdfh+EeG-NFkr47Bn3PFWCEOPA+1D1=5J7kA@mail.gmail.com>
	<20180905083120.GA28353@kroah.com>
	<CAKMK7uHLACdr4vGexqO-oh+QrRqxq0_KyJdhnr_eAZy6ApwWUQ@mail.gmail.com>
	<CACRpkdYP1_kG+nzg0Op-3VoLqRm8nUpXf8Daf_1B17-wWJyLjA@mail.gmail.com>
	<CAK8P3a09LAbSUyLR5DTAea35xtOgRpjRYkK1EGo1kDMEQjH4uA@mail.gmail.com>
	<CACRpkdZW03DuMVQ8Rn5GOiiN2z16cqq0WMmQFZquaGBp4BpsCA@mail.gmail.com>
	<CAOw6vb+Uanx_wqhMa4Kv=49rPKD96HBv1PqzL-gPUTgtT153tA@mail.gmail.com>
From: Jon Masters <jcm@redhat.com>
Message-ID: <e7b12fcf-e403-bee0-a237-01c8808e2b4c@redhat.com>
Date: Thu, 6 Sep 2018 12:00:57 -0400
MIME-Version: 1.0
In-Reply-To: <CAOw6vb+Uanx_wqhMa4Kv=49rPKD96HBv1PqzL-gPUTgtT153tA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Challenges in Upstream
 vs. Embargoed Development in Intel Graphics.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 09/06/2018 08:49 AM, Sean Paul wrote:

>> I heard other very FOSS-oriented companies ask the same
>> and is pretty much what I've heard people like Jon Masters
>> and the Chromebook people say in relation to upstream first
>> (they can slam me if they disagree) - others also want an
>> upstream first approach from their component suppliers and
>> it is going to be part of the procurement process so having
>> upstream first is going to be a competitive advantage or
>> even strict requirement for the component vendor.

Thanks for copying me. On our end, I require that the Arm server vendors
post patches and enablement upstream before they will get those patches
into RHEL. Originally, we allowed some wiggle room (e.g. while waiting
for upstream ACPI support) but then went from accepting patches had been
posted to requiring that they also minimally be in linux-next. Next up,
patches will need to be in linux-next or fully merged and in Fedora
before they'll get into RHEL. We're going to make the Arm folks behave
just like the Intel of a few years ago on the Xeon enablement side.
There won't be a choice if they want CentOS (we want RHEL, they want
CentOS, I know reality, and either way I get what I want from them).

Cheers,

Jon.

-- 
Computer Architect | Sent from my Fedora powered laptop
