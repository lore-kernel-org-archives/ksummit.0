Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A01521C8FB1
	for <ksummit@lists.linux.dev>; Wed, 12 Aug 2026 07:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786518467; cv=none; b=VGubSyaVA4Y+bl3fDiSCT/N7N1nFcVOA1VFAPIrmqNKcAejTJFqdOv25mh2t8ftTsULC4lfYOzrccdnBR4AzAc1n528huJJF8UWtSlqOrEmCFmA5Y1hVV1TO4H5zTT3+b2hx3uPXccbdooz9u0gYOpKrMhwp6IHYnNt7If92Acc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786518467; c=relaxed/simple;
	bh=yJA7bHjl7grRNReXrBX1m5N6tZ/E4pf1lBPyZPCkmkw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dllVYk3cxhktXAX8OWEGlCPWUILIECEmFMFbdFvaj+TIwmvjEEAYDsSz6F8cTcXK0uqiSGarm4bmGVZDaQqC8lPY5D6Mb8BPRAX9UeLTBNooRkykMWUx9gjhib0ztcZte7hRGb+vexDXV0GT3hykcBEV7cD5kOVmo9dbx/jW0Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERRkWeDA; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERRkWeDA"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B29261F000E9;
	Wed, 12 Aug 2026 07:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786518466;
	bh=QrqLXG3Is+IWemGAPwysx8HWP6KAcr8F0ujh8mjOjtg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=ERRkWeDAPWcDJ9tXTWGsGPhoFn3a9FCY3t9Wz3LgDvZ82T71e7zUuhdnAFWcAuUV2
	 3u2VbSpXR9N7TVKf6Lm8tx9m+Ob4cl4yzse7GB6vySGyUMdkZZLUDBzwXfTNoTqhGc
	 R/cvYrUB1ZmNdCRkl33bJ9gQ4Nk11ba4Z+WrXDnDiNA1iMGyUA2kt0W32+3ozVsSr+
	 WyyiNb8vosykCuMMsBYT3wXaCsQNooVjHhnrWf3gLxr4WkxuUaQOR4nNJS2PAombZz
	 TT/T1DRZyXelat3Y4nTfp6gYT6TmPy/4RlKyWRjHssgcv25bjkZmjqY7Zlfnr69yma
	 uuKvAyGk3aL/w==
Message-ID: <2509536d-cdec-448d-bf20-80d2b3d6728a@kernel.org>
Date: Wed, 12 Aug 2026 09:07:40 +0200
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
To: Dave Airlie <airlied@gmail.com>
Cc: Mark Brown <broonie@kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 "Lorenzo Stoakes (ARM)" <ljs@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, ksummit@lists.linux.dev
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home>
 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anii3u-87kSrB9K3@lucifer>
 <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
 <anl7CgkKb6tORavG@lucifer> <20260810091154.2d3cd6d5@gandalf.local.home>
 <cc6505e586325cd59ba036cef5429039c9c71ba8.camel@HansenPartnership.com>
 <20260810102423.342c4e9d@gandalf.local.home>
 <0a8c1e90-1de1-4a76-b0fa-e367a4bd4f55@sirena.org.uk>
 <CAPM=9twB=hJURcbdaiDZjkEeUHTLmOLAoxnD+g0zGTTMq3nySw@mail.gmail.com>
 <0c95dc03-5b33-49aa-8368-bac482b8b40e@kernel.org>
 <CAPM=9twMwxo-yO1Ke45D0Sxmji8Mt23BqxUMv-_GY1gzssVCiA@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 xsFNBFVDQq4BEAC6KeLOfFsAvFMBsrCrJ2bCalhPv5+KQF2PS2+iwZI8BpRZoV+Bd5kWvN79
 cFgcqTTuNHjAvxtUG8pQgGTHAObYs6xeYJtjUH0ZX6ndJ33FJYf5V3yXqqjcZ30FgHzJCFUu
 JMp7PSyMPzpUXfU12yfcRYVEMQrmplNZssmYhiTeVicuOOypWugZKVLGNm0IweVCaZ/DJDIH
 gNbpvVwjcKYrx85m9cBVEBUGaQP6AT7qlVCkrf50v8bofSIyVa2xmubbAwwFA1oxoOusjPIE
 J3iadrwpFvsZjF5uHAKS+7wHLoW9hVzOnLbX6ajk5Hf8Pb1m+VH/E8bPBNNYKkfTtypTDUCj
 NYcd27tjnXfG+SDs/EXNUAIRefCyvaRG7oRYF3Ec+2RgQDRnmmjCjoQNbFrJvJkFHlPeHaeS
 BosGY+XWKydnmsfY7SSnjAzLUGAFhLd/XDVpb1Een2XucPpKvt9ORF+48gy12FA5GduRLhQU
 vK4tU7ojoem/G23PcowM1CwPurC8sAVsQb9KmwTGh7rVz3ks3w/zfGBy3+WmLg++C2Wct6nM
 Pd8/6CBVjEWqD06/RjI2AnjIq5fSEH/BIfXXfC68nMp9BZoy3So4ZsbOlBmtAPvMYX6U8VwD
 TNeBxJu5Ex0Izf1NV9CzC3nNaFUYOY8KfN01X5SExAoVTr09ewARAQABzSVLcnp5c3p0b2Yg
 S296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+wsGPBBMBCgA5AhsDBgsJCAcDAgYVCAIJCgsE
 FgIDAQIeAQIXgBYhBJvQfg4MUfjVlne3VBuTQ307QWKbBQJp2mE8AAoJEBuTQ307QWKbeaIP
 /ihHTkTW4KsN/DQ945JJbyu5tI0J80Wue7QyyLPglyKfhgb5cLLNPpOC8cCIJsc7+W3i2P38
 s2c1cOH6CYGE7E9ur3Vfme8NW2S2I/Z8VC7bZnzyS23wT17LrsdS/qCpx4o8U+pt/xdXDKph
 EGRYrIEmMpUWvyYzyYKGIe25FtaayIIKpq8eZYyFcp2f/sG5IkOW5uZzHPMPdcm87jU7fyuQ
 rAU2vx9r+ulUfQ/q9Z2roC/ode3l7t2pN7BCBCsUDp6JCrUyZrtT1e7EbA0ZRP3aOBNk2P2E
 DQOgJGjGdO5Yx2Y9LFtltu6JbsBJHi1syGRX3AtQYOMc4Y1WGoeZJmMlvKj2ZqqXNkcWi2DS
 IQEWB0uW6CqFsBBIMGDa+6OzdaVO/uAVXWDWml02Men3CILdI1MbVjoh8ECqYUY7OQ+JJvNN
 vnliuq5WM3Ghd3jg/LZZrxXjdIginRHFQCjIJYLKpLZWm1/iDFedcfzqRNYmTtqscdCNHW41
 oT3Z7BmO9xwdjuwBS6nmS6JJwkbf5Ot2QR4pB/DRU7ZwjT1qHe+9r9gF32wXVQatHNGK/VVu
 sfwOnkdxCWkp/qb2gdQRmZh+SedStWshigH6sNfuHBloF/q+hjMRc8b2m326OZdrbSHwY1Sz
 vti8Hn7n8NjdHO9LKB7BIdjkA9DA5WsqOuVCzsFNBFVDXDQBEADNkrQYSREUL4D3Gws46JEo
 Z9HEQOKtkrwjrzlw/tCmqVzERRPvz2Xg8n7+HRCrgqnodIYoUh5WsU84N03KlLueMNsWLJBv
 BaubYN4JuJIdRr4dS4oyF1/fQAQPHh8Thpiz0SAZFx6iWKB7Qrz3OrGCjTPcW6eiOMheesVS
 5hxietSmlin+SilmIAPZHx7n242u6kdHOh+/SyLImKn/dh9RzatVpUKbv34eP1wAGldWsRxb
 f3WP9pFNObSzI/Bo3kA89Xx2rO2roC+Gq4LeHvo7ptzcLcrqaHUAcZ3CgFG88CnA6z6lBZn0
 WyewEcPOPdcUB2Q7D/NiUY+HDiV99rAYPJztjeTrBSTnHeSBPb+qn5ZZGQwIdUW9YegxWKvX
 XHTwB5eMzo/RB6vffwqcnHDoe0q7VgzRRZJwpi6aMIXLfeWZ5Wrwaw2zldFuO4Dt91pFzBSO
 IpeMtfgb/Pfe/a1WJ/GgaIRIBE+NUqckM+3zJHGmVPqJP/h2Iwv6nw8U+7Yyl6gUBLHFTg2h
 YnLFJI4Xjg+AX1hHFVKmvl3VBHIsBv0oDcsQWXqY+NaFahT0lRPjYtrTa1v3tem/JoFzZ4B0
 p27K+qQCF2R96hVvuEyjzBmdq2esyE6zIqftdo4MOJho8uctOiWbwNNq2U9pPWmu4vXVFBYI
 GmpyNPYzRm0QPwARAQABwsF2BBgBCgAgAhsMFiEEm9B+DgxR+NWWd7dUG5NDfTtBYpsFAmna
 YUkACgkQG5NDfTtBYptX+BAApg32CkxwNucNEi8WfWA8oKkW0y8YDuY6ORMo9FWNGiT/OTy0
 vyJrLocrpn86zwfjVp+eCrssPYh8eqJfnWqmYv6ACQtHPYzPZQ3mSo8H97Z01oUxITzCxpXm
 ZkLgPIqtDPcC2E3dPM/fVxcyowM8XsaMA9wcsaUYrta8toOq2b9tKcjleKMfMrm0gQ9u7wUc
 QbLkwj6TCLOwucb07GXzLTNF9PZmaDUpKAZjMjmrW+le+SFvQbhamx0rxLWPR0NWntXpbCn+
 +ACch03p/JyTBVktxFsFyCt7pTPE1kEaeuXBTe/a2D9iQvRxRW19LvuO2e59/u1wYUiH/orz
 wbIC2S4dBsPAPihL3ztOU1yE86GPyQtSE0kU+/7snnLt4QGi6PChf3t5gnNjAzjUUovO8rgI
 c+5yN5heq5loYHgK6OQ9OlHzsPHO9e9MOQcKlFycs1pyijFGzDwdNUm/SchK8iWT2QApTx4A
 K9bCVaboTA2T77QYkRcRJYSsO1alGX0ome/hMLD1daXlkrNUp1HWa3K4iytLRXjCSIorWiGs
 n+q3krnpXu3TFkA8qtOFZMdnIiFuiq1yLT8hptsV5xh1TA2nsVvSYiaCr3q4s4BKjS/KrLDb
 qoxzw8ISjdUp4pA85vb6YLCmb39NgidD+7PmAr65lBNveIFynTgsja1rRQ4=
In-Reply-To: <CAPM=9twMwxo-yO1Ke45D0Sxmji8Mt23BqxUMv-_GY1gzssVCiA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/08/2026 08:20, Dave Airlie wrote:
> On Wed, 12 Aug 2026 at 16:01, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>
>> On 11/08/2026 05:29, Dave Airlie wrote:
>>>>>> If your assumption is correct, this is internal cat herding ... MM has
>>>>>> much the same problem except that it has to deal with somewhat
>>>>>> opinionated architecture maintainers (around 22 of them) to agree on
>>>>>> the internal abstractions for MM primitives.  Perhaps rather than
>>>>>> getting into my problem is bigger than yours type arguments, we could
>>>>>> observe that MM might run a bit more smoothly because it gets an
>>>>>> additional 3 day conference (LSF/MM) plus a MC at Plumbers to sort
>>>>>> itself out?
>>>>
>>>>> I guess the question is, what exactly is being big for DRM that it needs to do
>>>>> cherry-picking for their linux-next branch whereas Networking and ARM do
>>>>> not? Is DRM bigger than either of those? From what I understand VFS doesn't
>>>>> have to do that either. And VFS has a large range of file systems to deal
>>>>> with. But it also has one of the best abstraction layers of the kernel.
>>>>
>>>> It's not even all of DRM, it's specifically the AMD and Intel driver
>>>> stacks which as far as I can tell just routinely cherry pick all their
>>>> fixes between their development and fixes branches without even
>>>> considering the possibility of either merging up the fixes branch or
>>>> just waiting and letting the fixes propagate back.  None of the rest of
>>>> the DRM trees ever seems to cause these issues.
>>>
>>> AMD and Intel are just the two largest teams with the longest
>>> pipelines of internal engineers and teams. There are between 50 and
>>> 100 people in those groups, across multiple disjoint teams feeding
>>> into a single driver. It just doesn't scale for all 50-100 people to
>>> understand the cycle of the upstream Linus tree at all times for all
>>> patches.
>>
>> Qualcomm has also between 50-100 people in different teams upstreaming
>> to similar subsystems (like SoC) and they try to understand the cycle.
>>
>> It's just AMD and Intel do not care to understand, because it is easier
>> for them and no one nags them...
> 
> Get back to me when their devices are in a place to be running
> upstream kernels as much as AMD or Intel at the same scale.

So I am back. All recent flagship SoCs since a 3-4 years have full
upstream patches posted from day 0 of hardware release. Since a year
Qualcomm upstreams most of the patches before hardware release.

And their devices is a SoC, consisting of not only GPU but few other
DSPs and multum of other IP blocks, so not even single hardware.

I am not saying that they are doing perfect, but they received clear
guideline they need to adjust to upstream process and cycle and they do
try to adjust. I know it from first hand since I have been directly
involved in this for a year now.

> 
> We've tried to keep the upstream schedule for ages, as Rodrigo points
> out it falls down, stuff goes missing in the shutdown periods, telling
> teams to stop working for 2-3 weeks isn't an option in most companies.

Well, we tell that Qualcomm and Qualcomm listens to maintainers. Are you
saying that others cannot listen to maintainers? That is a very bad
precedent, because now Qualcomm managers will get back to me and say
"why are you so harsh to us? can't we get some slack like others?"

> Intel and AMD are trying to upstream GPUs that aren't even on the
> market yet, velocity mattters a lot more because thier customers are

Same Qualcomm. Qualcomm posts patches all in public like 9 months before
hardware is going to be announced. Publicly announced, so availability
even later!

> usually on the end of the pipeline via Linus' tree,
> 
> Qualcomm is not in the same position, a lot of their pipeline delivery
> is via Android or ChromeOS and they have nowhere near the amount of
> regression finding problems that upstream GPUs have.

No true anymore. They do release to Android but that's downstream and we
do not talk about it here. I talk about upstream and their
upstream-first releases for all of their major and minor products.

That's mainline Linux distros: Debian, Ubuntu, Yocto. Their current BSP
is pure upstream based.

That's the same amount of regression handling as Intel and AMD.

Do not assume AMD and Intel are the only ones or are somehow special.


Best regards,
Krzysztof
