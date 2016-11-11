Return-Path: <m.chehab@samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 24D1F95D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 11 Nov 2016 10:04:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5F0D0279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 11 Nov 2016 10:04:32 +0000 (UTC)
Date: Fri, 11 Nov 2016 07:34:47 -0200
From: Mauro Carvalho Chehab <m.chehab@samsung.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20161111073447.4dd590b0.m.chehab@samsung.com>
In-Reply-To: <87shr0g90r.fsf@intel.com>
References: <20161107075524.49d83697@vento.lan>
	<20161107170133.4jdeuqydthbbchaq@x>
	<A4091944-D727-45B5-AC24-FE3B2700298E@darmarit.de>
	<8737j0hpi0.fsf@intel.com>
	<DC27B5F7-D69E-4F22-B184-B7B029392959@darmarit.de>
	<87shr0g90r.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Markus Heiser <markus.heiser@darmarit.de>,
	ksummit-discuss@lists.linuxfoundation.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
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

Em Wed, 09 Nov 2016 13:58:12 +0200
Jani Nikula <jani.nikula@linux.intel.com> escreveu:

> On Wed, 09 Nov 2016, Markus Heiser <markus.heiser@darmarit.de> wrote:
> > Am 09.11.2016 um 12:16 schrieb Jani Nikula <jani.nikula@linux.intel.com>:  
> >>> So I vote for :
> >>>   
> >>>> 1) copy (or symlink) all rst files to Documentation/output (or to the
> >>>> build dir specified via O= directive) and generate the *.pdf there,
> >>>> and produce those converted images via Makefile.;  
> >> 
> >> We're supposed to solve problems, not create new ones.  
> >
> > ... new ones? ...  
> 
> Handle in-tree builds without copying.
> 
> Make dependency analysis with source rst and "intermediate" rst work.
> 
> Make sure your copying gets the timestamps right.
> 
> Make Sphinx dependency analysis look at the right copies depending on
> in-tree vs. out-of-tree. Generally make sure it doesn't confuse Sphinx's
> own dependency analysis.

I agree with Jani here: copy the files will make Sphinx recompile
the entire documentation every time, with is bad. Ok, Some Makefile
logic could be added to copy only on changes, but that will increase
the Makefile complexity.

So, I prefer not using copy. As I said before, a Sphinx extension that
would make transparent for PDF document generation when a non-PDF image
is included, doing whatever conversion needed, seems to be the right fix 
here, but someone would need to step up and write such extension.

-- 

Cheers,
Mauro
