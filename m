Return-Path: <markus.heiser@darmarit.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5F5D0B8F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 Nov 2016 11:28:03 +0000 (UTC)
Received: from smtp2-2.goneo.de (smtp2-2.goneo.de [85.220.129.34])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D36211A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 Nov 2016 11:28:01 +0000 (UTC)
Content-Type: text/plain; charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
From: Markus Heiser <markus.heiser@darmarit.de>
In-Reply-To: <8737j0hpi0.fsf@intel.com>
Date: Wed, 9 Nov 2016 12:27:48 +0100
Content-Transfer-Encoding: 7bit
Message-Id: <DC27B5F7-D69E-4F22-B184-B7B029392959@darmarit.de>
References: <20161107075524.49d83697@vento.lan>
	<20161107170133.4jdeuqydthbbchaq@x>
	<A4091944-D727-45B5-AC24-FE3B2700298E@darmarit.de>
	<8737j0hpi0.fsf@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: ksummit-discuss@lists.linuxfoundation.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@s-opensource.com>,
	linux-media@vger.kernel.org
Subject: Re: [Ksummit-discuss] Including images on Sphinx documents
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


Am 09.11.2016 um 12:16 schrieb Jani Nikula <jani.nikula@linux.intel.com>:
>> So I vote for :
>> 
>>> 1) copy (or symlink) all rst files to Documentation/output (or to the
>>> build dir specified via O= directive) and generate the *.pdf there,
>>> and produce those converted images via Makefile.;
> 
> We're supposed to solve problems, not create new ones.

... new ones? ...

>> IMO placing 'sourcedir' to O= is more sane since this marries the
>> Linux Makefile concept (relative to $PWD) with the sphinx concept
>> (in or below 'sourcedir').

-- Markus --
