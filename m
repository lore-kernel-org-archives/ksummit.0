Return-Path: <matthew.garrett@coreos.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B8F329D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 16:58:00 +0000 (UTC)
Received: from mail-yb0-f174.google.com (mail-yb0-f174.google.com
	[209.85.213.174])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 07D5FCB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 16:57:59 +0000 (UTC)
Received: by mail-yb0-f174.google.com with SMTP id e31so50360018ybi.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 09:57:59 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CA+55aFxaivyPG3YWwU2j6m2Xsicmk-Ed2_qqkfkTw4ExokqucA@mail.gmail.com>
References: <20160826193331.GA29084@jra3>
	<CA+55aFyvFJ0gz++ApyO7gFGd0wz4ysjs=6wNZi-91VUJuVK2_w@mail.gmail.com>
	<87inunxf14.fsf@ebb.org> <20160827162655.GB27132@kroah.com>
	<20160827230210.GA6717@jeremy-acer>
	<CA+55aFzE4agwAkbB_zv2oaAa3jsd=Q3MkB+1+J=XjsOoeUT1jA@mail.gmail.com>
	<CAPeXnHsTskZhwS6Ckp=xRzxbwax9FrMc5gRFmFmySY-Pq3KexA@mail.gmail.com>
	<CAPeXnHtqc5fYUV89H2E4g-SQmFNmc=3bj1NiCRVAWg=WoP0R7g@mail.gmail.com>
	<CAPeXnHt1WOTOLSK7jZk9FfUNYNf2i8-e9kzhmzmNdxCUXdK=bQ@mail.gmail.com>
	<CA+55aFwevwn6-jTRq3t80b6cw5-Emn1cTFai2-kSJLgZOYSQZA@mail.gmail.com>
	<CAPeXnHtDZFSiasopD4j9xUV856RjV=wSaTQBwS-tkYKonbnY0Q@mail.gmail.com>
	<CA+55aFxaivyPG3YWwU2j6m2Xsicmk-Ed2_qqkfkTw4ExokqucA@mail.gmail.com>
From: Matthew Garrett <mjg59@coreos.com>
Date: Mon, 29 Aug 2016 12:57:56 -0400
Message-ID: <CAPeXnHtQ7Zfw=Z9KCscMTznx2-Q5AW-qS5kvxFRmBmG_6Qtq7w@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: multipart/alternative; boundary=001a1148ad162f5f59053b38c48b
Cc: "Bradley M. Kuhn" <bkuhn@sfconservancy.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--001a1148ad162f5f59053b38c48b
Content-Type: text/plain; charset=UTF-8

On Aug 27, 2016 7:16 PM, "Linus Torvalds" <torvalds@linux-foundation.org>
wrote:
>
> On Sat, Aug 27, 2016 at 5:02 PM, Matthew Garrett <mjg59@coreos.com> wrote:
> >
> > OK. A vendor sells 500,000 network-connected devices running a version
of
> > Linux that has a vulnerability in the network driver that's discovered a
> > year later. The hardware is custom, they refuse to release source, and
> > they've discontinued the product line, so nobody else is able to fix
it. Is
> > it acceptable to engage in litigation in order to ensure that owners of
> > these devices can receive a security update, even if by doing so we
alienate
> > the vendor and cause them to choose another kernel in future?
>
> So why don't you name them and shame them very publicly and try
> everything else first?

I'm still at the point of trying to work with the company in a way that
avoids all that, and things get rather more complicated when you're also
trying to practice responsible disclosure over security issues. But yes,
obviously I'm not going to press for anything else unless every other
option has been exhausted first.

> If the vendor still exists, and sells other devices, make a big stink
> about it. It sounds like you've talked to them in private already, but
> why do you still call them "a vendor" now when you start talking about
> wanting to sue them?

I *don't* want to sue them. I just don't have faith that the other options
will be fruitful, and that seems to be a case you're not really focusing
on.

> Because without that, the answer is always going to be absolutely no,
> simply because of the "absolute last option" thing.
>
> And you talk about how you're helping users, but how many of them
> would actually upgrade? Very few people end up upgrading firmware even
> when it's automatic, much less so if it would mean that they'd switch
> to OpenWRT or DD-WRT or something (since presumably the *existing*
> firmware ends up having lots of non-GPL'd sources that you wouldn't
> get even with a lawsuit)?

The number would end up being small, but the alternative is that they *all*
end up running insecure code. Doesn't giving people the option seem worth
it?

> In practical terms, how would that help Linux?

There would probably be no direct benefits at all for Linux as a technical
project. There are potentially benefits in public perception of Linux-based
IoT devices as being less likely to be left behind after vendors move on.
But really, that's the question. If something has no significant benefit to
the Linux project, but does benefit users of the product, are you
fundamentally against lawsuits after every other option has been exhausted?

--001a1148ad162f5f59053b38c48b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p dir=3D"ltr">On Aug 27, 2016 7:16 PM, &quot;Linus Torval=
ds&quot; &lt;<a href=3D"mailto:torvalds@linux-foundation.org" target=3D"_bl=
ank">torvalds@linux-foundation.org</a><wbr>&gt; wrote:<br>
&gt;<br>
&gt; On Sat, Aug 27, 2016 at 5:02 PM, Matthew Garrett &lt;<a href=3D"mailto=
:mjg59@coreos.com" target=3D"_blank">mjg59@coreos.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; OK. A vendor sells 500,000 network-connected devices running a ve=
rsion of<br>
&gt; &gt; Linux that has a vulnerability in the network driver that&#39;s d=
iscovered a<br>
&gt; &gt; year later. The hardware is custom, they refuse to release source=
, and<br>
&gt; &gt; they&#39;ve discontinued the product line, so nobody else is able=
 to fix it. Is<br>
&gt; &gt; it acceptable to engage in litigation in order to ensure that own=
ers of<br>
&gt; &gt; these devices can receive a security update, even if by doing so =
we alienate<br>
&gt; &gt; the vendor and cause them to choose another kernel in future?<br>
&gt;<br>
&gt; So why don&#39;t you name them and shame them very publicly and try<br=
>
&gt; everything else first?</p>
<p>I&#39;m still at the point of trying to work with the company in a way t=
hat avoids all that, and things get rather more complicated when you&#39;re=
 also trying to practice responsible disclosure over security issues. But y=
es, obviously I&#39;m not going to press for anything else unless every oth=
er option has been exhausted first.<br></p>
<p dir=3D"ltr">&gt; If the vendor still exists, and sells other devices, ma=
ke a big stink<br>
&gt; about it. It sounds like you&#39;ve talked to them in private already,=
 but<br>
&gt; why do you still call them &quot;a vendor&quot; now when you start tal=
king about<br>
&gt; wanting to sue them?</p>
<p>I *don&#39;t* want to sue them. I just don&#39;t have faith that the oth=
er options will be fruitful, and that seems to be a case you&#39;re not rea=
lly focusing on. </p>
<p dir=3D"ltr">&gt; Because without that, the answer is always going to be =
absolutely no,<br>
&gt; simply because of the &quot;absolute last option&quot; thing.<br>
&gt;<br>
&gt; And you talk about how you&#39;re helping users, but how many of them<=
br>
&gt; would actually upgrade? Very few people end up upgrading firmware even=
<br>
&gt; when it&#39;s automatic, much less so if it would mean that they&#39;d=
 switch<br>
&gt; to OpenWRT or DD-WRT or something (since presumably the *existing*<br>
&gt; firmware ends up having lots of non-GPL&#39;d sources that you wouldn&=
#39;t<br>
&gt; get even with a lawsuit)?<br>
</p><p>The number would end up being small, but the alternative is that the=
y *all* end up running insecure code. Doesn&#39;t giving people the option =
seem worth it?<br></p><p dir=3D"ltr">
&gt; In practical terms, how would that help Linux?<br>
</p><p>There would probably be no direct benefits at all for Linux as a tec=
hnical project. There are potentially benefits in public perception of Linu=
x-based IoT devices as being less likely to be left behind after vendors mo=
ve on. But really, that&#39;s the question. If something has no significant=
 benefit to the Linux project, but does benefit users of the product, are y=
ou fundamentally against lawsuits after every other option has been exhaust=
ed?</p></div>

--001a1148ad162f5f59053b38c48b--
