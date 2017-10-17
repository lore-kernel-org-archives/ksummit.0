Return-Path: <trini@konsulko.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 30C9FBC3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 17 Oct 2017 13:21:58 +0000 (UTC)
Received: from mail-qt0-f179.google.com (mail-qt0-f179.google.com
	[209.85.216.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6EAD347E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 17 Oct 2017 13:21:57 +0000 (UTC)
Received: by mail-qt0-f179.google.com with SMTP id 31so3387901qtz.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 17 Oct 2017 06:21:57 -0700 (PDT)
Date: Tue, 17 Oct 2017 09:21:53 -0400
From: Tom Rini <trini@konsulko.com>
To: Boris Brezillon <boris.brezillon@free-electrons.com>
Message-ID: <20171017132153.GH12015@bill-the-cat>
References: <CACxGe6sxKzNKZbdGA-G=Th2oHwuanyC2kGYuaFcKbSRkuhep+Q@mail.gmail.com>
	<20171017114823.58476908@bbrezillon>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171017114823.58476908@bbrezillon>
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

On Tue, Oct 17, 2017 at 11:48:23AM +0200, Boris Brezillon wrote:
> Hello Grant,
> 
> On Mon, 9 Oct 2017 21:39:51 +0100
> Grant Likely <grant.likely@secretlab.ca> wrote:
> 
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
> 
> Not sure yet if I'll attend the DT workshop or not, but I thought I
> could ask my question here because it might be of interest to someone
> else who is attending.
> 
> What happens when the DT bindings is not documented in Linux but in an
> another project because this project was the first to use it.
> 
> I had the case here http://patchwork.ozlabs.org/patch/810275/, and I'm
> not sure what's the policy when this happens. Should we add a file
> under Documentation/devicetree/bindings/... that points to the external
> doc file, should we duplicate the DT bindings doc in Linux, or should
> we just leave the bindings undocumented in the kernel tree?

I really hope (and have tried pushing via some other channels) that
given Android's embrace of devicetree for Android 8 they will have
people present as there's going to be issues like the above cropping up
now.

-- 
Tom
