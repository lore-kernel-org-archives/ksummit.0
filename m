Return-Path: <alex.shi@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8F380949
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 Sep 2016 02:39:23 +0000 (UTC)
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6A84D1EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 Sep 2016 02:39:21 +0000 (UTC)
Received: by mail-qk0-f175.google.com with SMTP id h8so74572918qka.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 Sep 2016 19:39:21 -0700 (PDT)
To: Masami Hiramatsu <mhiramat@kernel.org>
References: <57C78BE9.30009@linaro.org>
	<20160902134711.movdpffcdcsx6kzv@thunk.org>
	<EA994DF73240CA4588A99BF072DB2840021207D3@BPXM12GP.gisp.nec.co.jp>
	<57D62B3F.2070900@linaro.org>
	<20160913010930.24ff31da6e055a54136a3797@kernel.org>
From: Alex Shi <alex.shi@linaro.org>
Message-ID: <57D766D4.8020303@linaro.org>
Date: Tue, 13 Sep 2016 10:39:16 +0800
MIME-Version: 1.0
In-Reply-To: <20160913010930.24ff31da6e055a54136a3797@kernel.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Mark Brown <broonie@linaro.org>,
	Tsugikazu Shibata <tshibata@ab.jp.nec.com>,
	Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [LTSI-dev] [Stable kernel] feature
 backporting collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On 09/13/2016 12:09 AM, Masami Hiramatsu wrote:
>> Thanks for Tsugikazu's explanation of LTSI!
>> > LSK follows the very similar rules as LTSI, if anyone like to look into
>> > LSK's policies: https://wiki.linaro.org/LSK
>> > From 'LSK INCLUSION CONSIDERATIONS' chapter.
>> > 
>> > Compare to LTSI, LSK has newer LTS, and more upstream features
>> > backporting which requested by many SoC vendors. Apparently these are
>> > needed widely in industry. And the separately feature branch give more
>> > feasibility on feature selection to user. If don't like any features
>> > branches, That just left pure LTS.
> If I understand correctly, the major difference of LSK and LTSI is the SoC
> neutral or not. LSK focuses to backport "features" not "SoC/board supports"
> because many vendors may port their kernel on LSK to make a stable
> BSP/AOSP kernel for their devices. But LTSI aims to help vendors to
> push their patches to upstream by giving them a motivation to merge
> their patches within the LTSI merge window.

Yes, that's right. Since each of vendors often has different
drivers/devices for their hardware, it's hard to LSK to adopt and test
them, especial when the SoC platform is still hold in lab.

> 
> If we merge the effort of LTSI and LSK, we'll also give vendors a chance
> to *backport* their SoC support from upstream.
> 

Yes, that would give some extra chance to share our work. On the
contrary, the usage/test feedback will make LSK better.

Thanks
Alex
