Return-Path: <boris.brezillon@free-electrons.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1ACA08A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 24 Oct 2017 07:38:58 +0000 (UTC)
Received: from mail.free-electrons.com (mail.free-electrons.com [62.4.15.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id C70B218A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 24 Oct 2017 07:38:56 +0000 (UTC)
Date: Tue, 24 Oct 2017 09:37:55 +0200
From: Boris Brezillon <boris.brezillon@free-electrons.com>
To: Grant Likely <grant.likely@secretlab.ca>
Message-ID: <20171024093755.501c9045@bbrezillon>
In-Reply-To: <CACxGe6vhYV5dbnNQXyRoPq=XSA5HOtpN0FCqyoKvGVbRu-aRqA@mail.gmail.com>
References: <CACxGe6sxKzNKZbdGA-G=Th2oHwuanyC2kGYuaFcKbSRkuhep+Q@mail.gmail.com>
	<CACxGe6vhYV5dbnNQXyRoPq=XSA5HOtpN0FCqyoKvGVbRu-aRqA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	Kumar Gala <kumar.gala@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Rob Herring <rob.herring@linaro.org>, devicetree-spec@vger.kernel.org,
	Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
	Andy Gross <andy.gross@linaro.org>, Lucas Stach <l.stach@pengutronix.de>,
	David Gibson <david@gibson.dropbear.id.au>
Subject: Re: [Ksummit-discuss] Devicetree Workshop at Kernel Summit Prague
 (26 Oct 2017)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Grant,

On Thu, 19 Oct 2017 12:10:31 +0100
Grant Likely <grant.likely@secretlab.ca> wrote:

> Hi folks,
> 
> I've flushed out the schedule. It is still a draft, but I've got names
> against the topics and put them into a rough order.
> 
> If your name is listed below, it means I've asked you to frame the
> problem and moderate discussion for that topic. I'm *not* asking you
> to present unless the topic is specifically listed as a presentation.
> If you want you can have a slide or two, but you must get them to me
> by Tuesday evening, 24 October. I want to keep the time fiddling with
> projectors to a minimum.
> 
> Originally this was intended as a 1/2 day workshop, but given that we
> have the room for the full day, I've spread things out to give a bit
> more time for hallway track. I can also move things around if need be
> to avoid conflicts with the maintainers summit and KVM forum. The
> maintenance topics are in the afternoon under the assumption that
> there are folks in the maintainers summit who will want to attend. The
> tooling and schema topics are in the morning. I've also tried really
> hard to preserve the breaks and lunch to give time for hallway
> discussion.
> 
> As always, none of this is set in stone. If you have any specific
> conflicts or concerns then please say so.
> 
> Cheers,
> g.
> 
> ==Morning==
> 9:30 Welcome and Schedule bashing (0:10) (Grant Likely)
> 
> ===Tooling & Schema===
> 9:40 (5min) Encoding and Schema checking: Framing the problem (Grant Likely)
> 9:45 (15min) DT YAML encoding overview (Pantelis Antoniou - presentation)
> 10:00 (20min) YAML encoding discussion
> 10:20 (15min) DT Schema format - option 1 (Pantelis Antoniou - presentation)
> 10:35 (15min) DT Schema format - option 2 (Grant Likely - presentation)
> 10:50 (20min) DT Schema discussion - what should go in the spec?
> 
> 11:10-11:50 [Break]
> 
> ===Runtime usage===
> 11:50 (20min) Code Generation from DT (Kumar Gala - presentation)
> 12:10 (20min) Runtime memory consumption (Rob Herring - presentation)
> 
> 12:30-14:30 [Lunch]
> 
> ==Afternoon==
> ===DTS maintenance issues===
> 14:30 (15min) Overlay maintenance plan (Bill Mills)
> 14:45 (15min) Avoiding duplicate descriptions (Thomas Petazzoni)
> 15:00 (15min) Criteria for accepting board files
> 15:15 (15min) Location for maintaining bindings - how to handle
> 'foreign bindings' (Boris Brezillon)

Sorry for late reply, but I will not attend the Device Tree workshop.
I still think the problem should be discussed and you seemed to have an
opinion on this, so maybe you can lead the discussion.

Regards,

Boris

> 15:30 (15min) Sharing Generic bindings (Geert Uytterhoeven)
> 15:45 (15min) ABI Stability (Lucas Stach)
> 
> 16:00-16:30 [break and overflow discussion]
> 
> 16:30 (20min) DT health check (Ben Dooks)
> 16:50 (15min) devicetree.org update (Grant Likely)
> 17:05 (15min) EBBR Discussion (Grant Likely)
> 17:20 Closing and feedback
> 
> 
> On Mon, Oct 9, 2017 at 9:39 PM, Grant Likely <grant.likely@secretlab.ca> wrote:
> > Kernel Summit is now just over 2 weeks away and it is time to pull
> > together the schedule for the Devicetree workshop. Originally I
> > planned on just an afternoon, but I've got the room for the whole day,
> > so I've got a lot of flexibility on the schedule. Unscheduled time can
> > be used for hacking.
> >
> > Date: 26 Oct 2017
> > Time: 9:00am-5:30pm (Lunch from 12:30-2:30)
> > Location: Athens room - Hilton Prague
> >
> > If you plan to attend, make sure you update your OSSunmitE/ELCE
> > registration to include the DT Workshop (log in to access and modify
> > your registration):
> >
> > https://www.regonline.com/register/login.aspx?eventID=1883377&MethodId=0&EventsessionId=&Email_Address=&membershipID=
> >
> > Here is my current list of topics in no particular order, including
> > the topic moderator:
> >
> > Runtime memory consumption (Rob Herring)
> > Overlay maintenance plan (TBC)
> > Stable ABI for devicetree (TBC)
> > DT YAML encoding (Pantelis Antoniou)
> > DT Schema format - option 1 (Pantelis Antoniou)
> > DT Schema format - option 2 (Grant Likely)
> > Sharing Generic bindings (TBC)
> > devicetree.org update (Grant)
> >
> > Reply to this email if you want to propose another topic.
> >
> > Reply privately if there is a particular topic you want to attend but
> > you are unable to be there in the morning or afternoon. I'll put the
> > actual agenda together a week out from the event.
> >
> > g.  
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
