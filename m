Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CD02D892
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 22 Nov 2016 15:40:30 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7FE511D8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 22 Nov 2016 15:40:30 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: Mauro Carvalho Chehab <mchehab@s-opensource.com>
In-Reply-To: <20161122131510.0fadabc4@vento.lan>
References: <cover.1479656706.git.mchehab@s-opensource.com>
	<20161121104444.28862d80@lwn.net>
	<20161121171557.5c0fbe8c@vento.lan> <877f7vy684.fsf@intel.com>
	<20161122131510.0fadabc4@vento.lan>
Date: Tue, 22 Nov 2016 17:40:27 +0200
Message-ID: <871sy3y13o.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Markus Heiser <markus.heiser@darmarIT.de>,
	ksummit-discuss@lists.linuxfoundation.org,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH 0/9] Get rid of bitmap images
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 22 Nov 2016, Mauro Carvalho Chehab <mchehab@s-opensource.com> wrote:
> I tried both, none broke the long lines on 
> Documentation/media/uapi/v4l/fieldseq_tb.svg.

How about:

'tidy -xml -i Documentation/media/uapi/v4l/fieldseq_tb.svg | fmt -sw 80'

Both pretty indents and folds. I think it should Just Work(tm).


BR,
Jani.

-- 
Jani Nikula, Intel Open Source Technology Center
