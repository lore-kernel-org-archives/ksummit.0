Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 04BA711DF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 19:29:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A76A079
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 19:29:54 +0000 (UTC)
Date: Tue, 18 Sep 2018 16:29:48 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20180918162948.769dda1d@coco.lan>
In-Reply-To: <1537279328.3424.6.camel@HansenPartnership.com>
References: <CAPM=9tz6_byufs2xdOmU73VPVU2ojb=Ox0YzQxFpOs7jztjbFg@mail.gmail.com>
	<1537279328.3424.6.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC FOR KS] CoC and Linus
 position (perhaps undocumented/closed/limited/invite session)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Tue, 18 Sep 2018 10:02:08 -0400
James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:

> > After the past 2-3 days I get the feeling there are maintainers
> > unsure about how this affects them and I think assuaging those fears
> > might be a good thing.
> >=20

> From my perspective, which is probably fairly widespread: we're already
> pretty much policing the lists using a set of rules which match fairly
> closely to the new CoC, so there should really be no huge impact.

After carefully reading it a couple of times, I think it has a huge
impact.

The more immediate impact is with regards to this wording:

	"Examples of unacceptable behavior by participants include:
	...
	* Publishing others=E2=80=99 private information, such as a physical or el=
ectronic
	  address, without explicit permission"

When we publish a patch with a Signed-off-by, Reviewed-by, Acked-by,
Requested-by, Suggested-by, etc, we are actually publishing an electronic
address.

The DCO 1.1 has an explicit clause that would allow to publish the
email address from the SOB's, together to its redistribution:

"       (d) I understand and agree that this project and the contribution
            are public and that a record of the contribution (including all
            personal information I submit with it, including my sign-off) is
            maintained indefinitely and may be redistributed consistent with
            this project or the open source license(s) involved."

But that doesn't cover the other tags.

We should solve this quickly, as otherwise maintainers may need to postpone
asking for pulling from any branches on trees that contain patches with
such tags.

Thanks,
Mauro
