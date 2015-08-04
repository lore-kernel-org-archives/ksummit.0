Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C186C8BA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 12:49:51 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5BCA112A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 12:49:50 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Tue, 04 Aug 2015 15:50:33 +0300
Message-ID: <6756795.jjv2YY7pQg@avalon>
In-Reply-To: <20150803083311.5abd23f6@lwn.net>
References: <20150801164142.653012af@lwn.net>
	<1893963.CjFnBCekyb@vostro.rjw.lan>
	<20150803083311.5abd23f6@lwn.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Jon,

On Monday 03 August 2015 08:33:11 Jonathan Corbet wrote:
> On Mon, 03 Aug 2015 15:35:36 +0200 Rafael J. Wysocki wrote:
> > > While I don't discourage it, I am not a fan of automated documentation.
> > > As you and mtk would know, writing high quality, informative, systems
> > > software documentation is an involved process. And it should be, imo.
> > > Same goes for describing APIs and algorithms in code comments. Sure,
> > > automation has its pros, particularly keeping docs up to date; yet this
> > > does not outweigh a well crafted document, which involves actual though.
> > 
> > "thought" I guess?
> > 
> > I have to say I agree here.
> 
> Surely nobody thinks I was saying that the documentation-writing process
> can be automated! :)  But we go to some lengths now to document our APIs
> in the code; I don't think we would want to break that.
> 
> > Not to mention the fact that if you are browsing the kernel tree via a web
> > frontend or LXR, for example, plain text docs are really good to have.
> 
> The nice thing about formats like Markdown or ReST is that they *are*
> plain text for all practical purposes.  Much better than DocBook in that
> regard.

My problem with inline documentation is that it makes easier for developers to 
write crappy doc and believe they've done their duty. It's not a technical 
issue, and I believe inline documentation has merits, especially for API 
documentation, but I've seen too many kerneldoc comments written as

/**
 * int do_foo_bar(int foo, bool bar) - Do foo bar
 * @foo: the foo for bar
 * @bar: the value of bar
 *
 * This function does foo bar.
 *
 * Return 0 on success and a negative value on error.
 */

That's just useless. Worse, it can give the impression to reviewers that the 
function has been documented while it clearly hasn't. Maybe we just need to 
tighten the review process and push harder for documentation, at the risk of 
rejecting useful contributions. That's not a new problem though.

DocBook and kerneldoc documentation serve two very different purpose in my 
opinion. While kerneldoc mostly aims at documenting internal APIs, DocBook is 
more of a story telling kind of documentation, suitable for documenting 
subsystem architectures for instance. This could be moved to inline comments, 
but at the end of the day I don't think it will make a big difference. The 
reason why we miss quality "background" documentation today has in my opinion 
more to do with the fact that we don't require it.

A good (or bad example, depending on how you see it) of this is the DRM/KMS 
documentation available from Documentation/DocBook/drm.tmpl. I spent a 
considerable amount of time writing it, it got reviewed, merged in the kernel, 
and has now been rendered completely useless as the DRM/KMS internal API has 
evolved and the documentation hasn't been updated despite my repeated 
requests. That was extremely demotivating, and made me give up documenting 
DRM/KMS at all.

If we don't start treating documentation as equally valuable as code we will 
never fix the problem. I'd even argue that documentation should be treated as 
having more value than code.

One more point, DocBook does a good job at documenting userspace APIs, 
especially ioctls. See http://linuxtv.org/downloads/v4l-dvb-apis/vidioc-g-fmt.html for instance. Can Markdown or ReST achieve that ?

-- 
Regards,

Laurent Pinchart
