Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 69F3941C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 Nov 2016 11:45:27 +0000 (UTC)
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E8EF0124
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 Nov 2016 11:45:26 +0000 (UTC)
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mauro Carvalho Chehab <mchehab@s-opensource.com>
In-Reply-To: <20161109092708.786f55da@vento.lan>
References: <20161107075524.49d83697@vento.lan>
	<20161107170133.4jdeuqydthbbchaq@x>
	<A4091944-D727-45B5-AC24-FE3B2700298E@darmarit.de>
	<8737j0hpi0.fsf@intel.com> <20161109092708.786f55da@vento.lan>
Date: Wed, 09 Nov 2016 13:45:23 +0200
Message-ID: <87vavwg9m4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Markus Heiser <markus.heiser@darmarit.de>, linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org, ksummit-discuss@lists.linuxfoundation.org,
	linux-doc@vger.kernel.org
Subject: Re: [Ksummit-discuss] Including images on Sphinx documents
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 09 Nov 2016, Mauro Carvalho Chehab <mchehab@s-opensource.com> wrote:
> Em Wed, 09 Nov 2016 13:16:55 +0200
> Jani Nikula <jani.nikula@linux.intel.com> escreveu:
>
>> >> 1) copy (or symlink) all rst files to Documentation/output (or to the
>> >>  build dir specified via O= directive) and generate the *.pdf there,
>> >>  and produce those converted images via Makefile.;  
>> 
>> We're supposed to solve problems, not create new ones.
>
> So, what's your proposal?

Second message in the thread,
http://lkml.kernel.org/r/87wpgf8ssc.fsf@intel.com

>
> Thanks,
> Mauro
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

-- 
Jani Nikula, Intel Open Source Technology Center
