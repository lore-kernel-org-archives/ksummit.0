Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E3013DE456
	for <ksummit@lists.linux.dev>; Mon, 19 Oct 2026 11:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792407781; cv=none; b=sQbtUCJu8YBOtpKg3jqLvUOsOvjsz9MAsx2xUMJl/vByuxh6kaCOsWg1alEY8TN8cTDiP2jck9NuLzO5rD2AlCdKcd9G6o1n+CNyFiVB8cMAM0KTPx+FBkULNOR0iFnwmipoiooeVpFgphsP8rlaSzdAn2aZpsq8NrakRok+/0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792407781; c=relaxed/simple;
	bh=aKznYOH6IGnWX4imb3RIzaFogzYPadhAflZ8o/pF/xw=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=knkRonXmim7bfvPD2umI0h4Tk1gEGMy0eMSmcXFvatniVv8tEg5kLGC7yFlVThzE36nZa3CBRwYbGre96QwezM39u3Z0l3sUDSPoxj+Zb1WnrJt+cUEZyZm7VXCXgM6n0aUpjY0dV2+/Frc+bZc1BID8luvd/2JpkAtCVJRYA7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pgYOt+Bc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kDeisoI1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pgYOt+Bc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kDeisoI1"
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69J8P7RW1896608
	for <ksummit@lists.linux.dev>; Mon, 19 Oct 2026 11:02:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dk1so2cLuZXw7H6YttGuCdYw4v1avm3bPcBQCMqS9ak=; b=pgYOt+Bc1s0yf5m9
	+zXiw4fRsCA7KkiYbay5L6yfOwtKHHE2Eqg6NVdtt1x54IxrUl7QvQtMQVtiZVH2
	ZXBnVfWotD0+mINQnQa9wr4ZAKYMYPipgzAO0blBwFgkjjQiris+EeipvWSt+Q0K
	+wnPFqHrua8YZR4o3ox7MuLolKSVf+/dNvbxGOukZm0v1gnhDsglciI3O6RISB18
	B22dBtyHbfh2cZPw/e3ERJKdwC4WsVv2r8i404x+yPd2j85MyD5YZ/vJ2DSoDDeS
	4WvMXi2zmZ64VNm5vTEPpxAW9LmHO67oqE8GwbmrsHuL1TdGztg8f+jhuouVJdHy
	dsv0Yg==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hdbvr9hnx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <ksummit@lists.linux.dev>; Mon, 19 Oct 2026 11:02:59 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-7cc0e78a4ccso108664137.0
        for <ksummit@lists.linux.dev>; Mon, 19 Oct 2026 04:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792407778; x=1793012578; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=dk1so2cLuZXw7H6YttGuCdYw4v1avm3bPcBQCMqS9ak=;
        b=kDeisoI1hZn7TvWxAxdZp4z17wQ5nBAXVJm5SXvb0p0CE/o2EyO2qusqA2FZ2atV6L
         5I8+cnMF7S6bHATSfDiKsHaMXOTpopNf+UXGKXXf/9QQmQ/yBhPQoeg7B9aorEtSvwlH
         fwkDaiTG1FRkqAXuG6eJBF9MDn2/xYRPn/7oGbzu6wV4JjPSaFqikwAa6aCQzjOT0Odw
         SjFhEPDA+UTshuuCkXZc+oGb69nC82GokbsOiVJFP4+a+F/7piphrICswD9aLaRMxvnX
         Gb9F7X0YZ5UbOmavXRiryhkT4TPBotCew3UDSVcsB303fySZ63bhC/W+usb25K6JWpfS
         poxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792407778; x=1793012578;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=dk1so2cLuZXw7H6YttGuCdYw4v1avm3bPcBQCMqS9ak=;
        b=BeoCEV135ZoXM8O2l0Py1twAvEQJjNAjW2emCSdLqWsvbnO/Vw1sWfYhmpy/9ZLVUF
         jcTPXmaOe6cifsth5UL8cdnyZxQRfEyMdnPTz3DO7LLEZhfxd4i3rj9IF+I6CP/1RRP8
         gruVBhbiHLuehms9Y3kJL0KNUue1Eq9qvPEzvmL4/GEy+IFgZZeR0ZYigUkvIqyWvLL+
         pF4rhzzEPvlre2dSL3ya+prfV+NPFZlcBBz+sR9PQC6f13Imnt1mzASDgHtrlWu28Vk1
         6Th3Vbvv6BtjWoVbBHWN4HqYBtZIUujPaovLFPcg9VJwZMLe7+fOYBudSIOG7BKY6z5Z
         OzbQ==
X-Gm-Message-State: AFq9FYInJloLbzfaZeoi8+c6VCj0ggGho2vKvFz3IampRnxK7X9cf3pL
	7LG2RyTES6qix/PAulLcy5O/v9FGdU5EbOZncRpl4PmYjGEMvWnWyXYEshxdr5Z0yK3xgyc46Lh
	nKyj7OlB8dOfEttv6/50oJucpxzrWu4vpeFV+08mb7XMSlYWcttismipEHWW4
X-Gm-Gg: AYBFou3hPypGtAAmbjYp2S8A9Erw8YkDgEuFFEX3b/7+i0BTQELVGmLWZ00223eErrZ
	zPrdfW4QNbXXFxov5wRvkp8UBHSvpPUUbqxf6h6q87hcv3+mPBbHsqeoD287MKstNrLns8EOaDg
	9DOpyjNhnmX7TmyrKLCoKCxJWpSTdCWUQOtdISxMR/oqsvFJAMXGRYceVlhvM/X6IBhW1Jq3Lf3
	7q4FxXpcQUwTY3siXG5XDP6SDPXY9WygBXiQbbmrPPv6WgFhCllptIIseLK8pt2NMe6hithzArg
	oODG4JVyvRx3IpJLWwhj8E8jnx7KOFLBUz66Mx3ggKmaKvOgyr+u7lDxI+T0YsUObky8AS7SJkr
	q9wao3Y3w+gZcuKuVh14=
X-Received: by 2002:a05:6102:5108:b0:7c0:e591:4da4 with SMTP id ada2fe7eead31-7cc369c10damr1485612137.18.1792407778547;
        Mon, 19 Oct 2026 04:02:58 -0700 (PDT)
X-Received: by 2002:a05:6102:5108:b0:7c0:e591:4da4 with SMTP id ada2fe7eead31-7cc369c10damr1485600137.18.1792407777988;
        Mon, 19 Oct 2026 04:02:57 -0700 (PDT)
Received: from [10.40.99.41] ([78.108.130.194])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c408e32875fsm351730366b.8.2026.10.19.04.02.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2026 04:02:57 -0700 (PDT)
Message-ID: <3354ebda-5158-489b-a577-5cb10e5d5fb0@oss.qualcomm.com>
Date: Mon, 19 Oct 2026 13:02:55 +0200
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: johannes.goede@oss.qualcomm.com
Subject: Re: Patch pre-submission to Sashiko
To: Theodore Tso <tytso@mit.edu>, Jiri Kosina <jikos@kernel.org>
Cc: ksummit@lists.linux.dev, sashiko@lists.linux.dev
References: <nn69829p-nn62-ppn7-968q-64o246ss90or@xreary.bet>
 <atO3pCuUxI950ftN@mit.edu>
Content-Language: en-US, nl
In-Reply-To: <atO3pCuUxI950ftN@mit.edu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE5MDA0MyBTYWx0ZWRfX/Wq0F1OOyryz
 5yvduYOHJ+YoQJylpm+ICo2WXIhYv6nocVPexw+JrUdlMef+5caHxMnB9yUt0AqD1etK/3GAhAD
 tk9c0I4875vDlweQjRdsug9RBKaWM/8S/zYlFGOmvdVqxN0jEXLyD/0S+D3Gv1q7l2sl4D1qv8S
 ICDqp8BM0Cv6sqHVg5rgig6ZHp/J0ZKBxlv8vZLUPvSpdv82UTyvusvbzcDuOGDfm0jdTnCUwqG
 jfKBTDvUsBc+9NmLt4OH6JE4F+EpIs7NmVKcvqiy6JQrVgo9uXOFk3GBiYCtNV2rp1+etqpiZYQ
 TIb3BT05PG3zg/kL2WEcn+7759oaCNfeS5iPjKSuE+j9FmTxLeSe6JDVQAu1zi/MHouo+BcL7bH
 msVAofSxCkR9temN+sBBf/J4lwRRTwrd2u1TIv2tTbxi05U87QaKn9GX4s+CkK0vixnBYu2KiTO
 23tzQCfc6vjPpzNXd9Q==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE5MDA0MyBTYWx0ZWRfX7s9b8FHiD2nm
 uBFlUmjXtxrIMr1VSXXI0rPhBSTPeq41QaewVS6+F56KGKxkJSY4rTCztpzSaULJl72gxwgEvQA
 x6e2PBb3yKuYgde1C6anis+onMU6+gc=
X-Proofpoint-GUID: Mb8G_3bb-fiY8OprQrNrK5_WJy6Ry3o5
X-Authority-Analysis: v=2.4 cv=K/+3jCWI c=1 sm=1 tr=0 ts=6ad5f8e3 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=rrvG0T/C2D967D07Ol03YQ==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=_QQQY8vNCpXisrmCSukA:9 a=QEXdDO2ut3YA:10 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-ORIG-GUID: Mb8G_3bb-fiY8OprQrNrK5_WJy6Ry3o5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-19_03,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 spamscore=0 suspectscore=0 adultscore=0
 impostorscore=0 clxscore=1011 bulkscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610190043

Hi Ted,

On 17-Oct-26 8:02 PM, Theodore Tso wrote:
> On Sat, Oct 17, 2026 at 07:28:48PM -0500, Jiri Kosina wrote:
>> I have just received a v1 to v11 patchset submission within roughly one 
>> day timeframe.
>>
>> Neither myself nor anyone else did comment with any review feedback, 
>> except for Sashiko. Which I believe is what triggered all the immediate 
>> resubmissions.
> 
> What some subsystem maintainers have requested is delay sashiko
> reviews from being sent out by some fixed time, such as 24 hours.
> 
> One approach which might want to explore is an exponential backoff.
> 
>> Another option I'd like to propose would be to introduce a way for 
>> submitters to run patches through back-and-forth with Sashiko even before 
>> properly submitting the Sashiko-polished v1 to maintainers and 
>> mailinglists.
> 
> It's not that hard for people to set up a local Sashiko. and then use
> either an local LLM, or their own cloud-hosted AI tokens.  Perhaps
> that's something we can encourage.

Actually it is that hard. Even if you spend the 2000 - 3000usd
necessary to run somewhat large-ish models locally the results are
still quite slow (which by itself would be ok) and they catch
a lot less then the actual Shashiko service.

As for using "their own cloud-hosted AI tokens" I've not tried this
myself but other people with a personal "Pro" level subscription
have tried and they got blocked out of further token use for 5 hours
(throttled) after a single Shashiko review run on a 5 patch patch-
series.

So it is actually quite hard to get Shashiko to do a pre-check without
just sending of the patches to the list and the Shahiko service do
its thing.

Regards,

Hans




