Return-Path: <BATV+a6457aaea25839043b36+4834+infradead.org+mchehab@bombadil.srs.infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E50AE8A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 17 Nov 2016 15:17:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 71381144
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 17 Nov 2016 15:17:00 +0000 (UTC)
Date: Thu, 17 Nov 2016 13:16:51 -0200
From: Mauro Carvalho Chehab <mchehab@infradead.org>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20161117131651.467943e0@vento.lan>
In-Reply-To: <20161117145244.sksssz6jvnntsw5u@thunk.org>
References: <20161107075524.49d83697@vento.lan> <11020459.EheIgy38UF@wuerfel>
	<20161116182633.74559ffd@vento.lan> <2923918.nyphv1Ma7d@wuerfel>
	<20161117145244.sksssz6jvnntsw5u@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Linus Torvalds <torvalds@linux-foundation.org>, linux-media@vger.kernel.org
Subject: Re: [Ksummit-discuss] Including images on Sphinx documents
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Ted,

Em Thu, 17 Nov 2016 09:52:44 -0500
Theodore Ts'o <tytso@mit.edu> escreveu:

> On Thu, Nov 17, 2016 at 12:07:15PM +0100, Arnd Bergmann wrote:
> > [adding Linus for clarification]
> > 
> > I understood the concern as being about binary files that you cannot
> > modify with classic 'patch', which is a separate issue.  
> 
> I think the other complaint is that the image files aren't "source" in
> the proper term, since they are *not* the preferred form for
> modification --- that's the svg files.  Beyond the license compliance
> issues (which are satisified because the .svg files are included in
> the git tree), there is the SCM cleaniless argument of not including
> generated files in the distribution, since this increases the
> opportunites for the "real" source file and the generated source file
> to get out of sync.  (As just one example, if the patch can't
> represent the change to binary file.)
> 
> I do check in generated files on occasion --- usually because I don't
> trust autoconf to be a stable in terms of generating a correct
> configure file from a configure.in across different versions of
> autoconf and different macro libraries that might be installed on the
> system.  So this isn't a hard and fast rule by any means (although
> Linus may be more strict than I on that issue).
> 
> I don't understand why it's so terrible to have generate the image
> file from the .svg file in a Makefile rule, and then copy it somewhere
> else if Sphinx is too dumb to fetch it from the normal location?

The images whose source are in .svg are now generated via Makefile
for the PDF output (after my patches, already applied to the docs-next
tree).

So, the problem that remains is for those images whose source
is a bitmap. If we want to stick with the Sphinx supported formats,
we have only two options for bitmaps: jpg or png. We could eventually
use uuencode or base64 to make sure that the patches won't use
git binary diff extension, or, as Arnd proposed, use a portable
bitmap format, in ascii, converting via Makefile, but losing
the alpha channel with makes the background transparent.

Thanks,
Mauro
