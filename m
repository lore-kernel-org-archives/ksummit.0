Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C8FD4746D7
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 13:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.158.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786107751; cv=none; b=WCm9FCPjFLtn0dLo/BpCRlNhR2TFvWNvP0keXM6fVL6yW8kY/RVsV9HgSkPjncWXMJxkVRNm/ZM0G9gdeDvlvQD1gvzlJz8+nMFX106/W7k/dLykwjE9UyQof1sVVewx4Y0NdeQ/vmwzFdRjZiO0lBew5mzMBsCpO9YI/w2r0sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786107751; c=relaxed/simple;
	bh=kzvkplQ10h0YMFaPZ1maydiJqtmkSjJypEE196P5y1s=;
	h=Message-ID:Subject:From:To:Cc:In-Reply-To:References:Content-Type:
	 Date:MIME-Version; b=St8UECys04nSAAGbnSTauiKlHiA3cA8bxQ6Wv7gHmdX9rT2SjwjnITO3QLrt/u+q5/s75XgmjhsbCdUMREI47AOUK8ZcIDCaFnFd9MvcX9YOuArY3H2kDqfe2ju17qePecIkDfiaJ6JeBnxG9EIb4V5hRSm3/vXdB9xoiqEMcEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=j3jt+aut; arc=none smtp.client-ip=148.163.158.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="j3jt+aut"
Received: from pps.filterd (m0360072.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 677ClwPi1562851;
	Fri, 7 Aug 2026 13:02:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pp1; bh=nK7lGp
	+LYFJsEVXTtdLcyTdkms0vi3Rzekp6GrZGAW4=; b=j3jt+autDuytd7F/50arqr
	GXX9iMwLcvT4RihwLRtoEmHmFc8JAwL/4nkYLTQSi0VvJVYg9ne+vRanfMU5s0z7
	HJYR5U8YvxPvwyAMitmDE4YbgPOQg75ld60EcKtDHs0Sx7UAo3Tl7awAM8mlKsw9
	+am87Oepp3xVge1ahWDdMbT4kgAbowZP/aMvhWkwNgIXcTFwIYqnJIbTtdWoPWf2
	HLBD/M9o6+BbtI/bfK3MB/FBt0yyRHhf9Tvob9MAVV80kE/AwfmG1EdyTZCpb9YQ
	gjrWi0qsPkKi6vsrtt6o6yirDbr74h3BLIJMi6ad7cTE9Ixonb8vvdlTpZjPLuTg
	==
Received: from ppma23.wdc07v.mail.ibm.com (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4fvy00bumh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 07 Aug 2026 13:02:16 +0000 (GMT)
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma23.wdc07v.mail.ibm.com (8.18.1.7/8.18.1.7) with ESMTP id 677CuMYe018792;
	Fri, 7 Aug 2026 13:02:15 GMT
Received: from smtprelay03.wdc07v.mail.ibm.com ([172.16.1.70])
	by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 4fsvmhqp42-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 07 Aug 2026 13:02:15 +0000 (GMT)
Received: from smtpav03.dal12v.mail.ibm.com (smtpav03.dal12v.mail.ibm.com [10.241.53.102])
	by smtprelay03.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 677D1bMx6095404
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 7 Aug 2026 13:01:37 GMT
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id ED70C58061;
	Fri,  7 Aug 2026 13:02:14 +0000 (GMT)
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 702C358064;
	Fri,  7 Aug 2026 13:02:14 +0000 (GMT)
Received: from li-43857255-d5e6-4659-90f1-fc5cee4750ad.ibm.com (unknown [9.61.153.103])
	by smtpav03.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Fri,  7 Aug 2026 13:02:14 +0000 (GMT)
Message-ID: <b0dfeb4bc8ca60768fdd6853e7fed7fdd22aa26f.camel@linux.ibm.com>
Subject: Re: [MAINTAINERS SUMMIT] Coping with the new-developer flood
From: Mimi Zohar <zohar@linux.ibm.com>
To: Theodore Tso <tytso@mit.edu>, Dan Carpenter <error27@gmail.com>
Cc: Konstantin Ryabitsev <mricon@kernel.org>, Greg KH <greg@kroah.com>,
        Jonathan Corbet
	 <corbet@lwn.net>, ksummit@lists.linux.dev
In-Reply-To: <anVK-qkUOaIJkt9M@mit.edu>
References: <87y0ekm9nw.fsf@trenco.lwn.net> <anSpoxZ9SUBvFOZj@mit.edu>
		 <2026080651-bony-hertz-bfb6@gregkh>
		 <20260806-industrious-whippet-of-jest-a91eaa@meerkat>
		 <anThWLhqipEM34kg@stanley.mountain> <anVK-qkUOaIJkt9M@mit.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Date: Fri, 07 Aug 2026 09:02:14 -0400
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
X-TM-AS-GCONF: 00
X-Proofpoint-Reinject: loops=2 maxloops=12
X-Proofpoint-Spam-Info: AW1haW4tMjYwODA3MDEwMCBTYWx0ZWRfX92K0vqO40Ecr
 CUfS6hF9h9psk7bg1CdSXIUUbpZyyOsTdFCl9xHDE37YFcv/7eF7n/E7mY74e/9jVf5c4a11XJq
 LeCuh+zPUGc2jqh0NwzW3dEF0So9AfI=
X-Authority-Analysis: v=2.4 cv=VPTtWdPX c=1 sm=1 tr=0 ts=6a75d758 cx=c_pps
 a=3Bg1Hr4SwmMryq2xdFQyZA==:117 a=3Bg1Hr4SwmMryq2xdFQyZA==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=RnoormkPH1_aCDwRdu11:22 a=RzCfie-kr_QcCd8fBx8p:22 a=VwQbUJbxAAAA:8
 a=i0EeH86SAAAA:8 a=qFCTLWqJoR2UGEZAqCgA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: EjuPPe0ecbhVmZOTBZloBk_R8g304Qec
X-Proofpoint-GUID: fdrc7DGAYR4qNkBz7BXzyov8BR3rl9rw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODA3MDEwMCBTYWx0ZWRfXwjZBW5aos83N
 ke8P7MZc9V142rNPbBiVbHbPbeNyE+Z+Ja5hiah4oXT2SlZtP7ZkeqanEvbZBgVYPwiMf79rPnH
 RIa6LWylJ2wVuZpq6KOaM2XkTlhZWypsWwAx1m/7zqcz4u512NWX+Xqa5zhqcs0v8V5bFU3Z+c8
 OYceFmUENhUvVUgd7Nm0l864ul/aJkMIUi9HySeNNKNcNZn8RqdYcFnfYTBW8P4cNeKGE2dl8Ar
 NZpynxh5EGyKIhInlYUys2SQ+XMK05xuScaIxse5rfgWCOFXrX72L48AFPOXurTXYvss58fOJN3
 z/HF4Y58Id7rsPifVgJxfj3IozKj3J0Hho204mclXqu+uEevUnEB14KVEZNTIn2wsOlhjhebBVG
 NusDq5IpWqfeEDSSl/OHhOnjrww1yQR0Ef1filgNladKarCnALA9E7HLPUWF9zW0eGUjQVCLrOJ
 0h2htiwX2HUewaEyc4g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-07_02,2026-08-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 spamscore=0 clxscore=1011
 priorityscore=1501 phishscore=0 impostorscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608070100

On Thu, 2026-08-06 at 23:23 -0400, Theodore Tso wrote:
> On Thu, Aug 06, 2026 at 10:32:40PM -0500, Dan Carpenter wrote:
> > On Thu, Aug 06, 2026 at 01:28:25PM -0400, Konstantin Ryabitsev wrote:
> > > - actually applies
> > > - isn't against a known LTS branch
> >=20
> > No one wants patches against an LTS branch.  That would violate the
> > stable rules since everything should be upstream first.
>=20
> Right, we should issue a warning if it's not a backport from upstream
> (e.g., if it's against an LTS branch, it should have an
> Upstream-commit: tag).
>=20
> There are some few exceptions, where a fix can't be easily backported
> to the LTS branch, and so a different way of fixing a particular
> serious patch needs to be applied to the LTS branch.  But normally
> this will be explicitly stated in the commit description, but we don't
> do that in a structured way, so it might be hard for a non-LLM bot to
> figure this out.  On the other hand, this is a pretty advanced
> technique, and it's unlikely that a new kernel developer would be
> doing something like this.  So we probably just ignore this case for a
> newcomers-focused bot.

Hi Ted,

I have a patch that doesn't need to be upstreamed, as per Eric Bigger's
comment[1], but needs to be in stable kernels.  What is the process for doi=
ng
that.

[1]https://lore.kernel.org/linux-integrity/0c590f6c-8ab0-f0ed-25a8-fa8a2ec6=
008e@huawei.com/

thanks,

Mimi
