Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FA398B8F2
	for <lists+linux1394-devel@lfdr.de>; Tue,  1 Oct 2024 12:05:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1svZl7-0006BZ-Cs;
	Tue, 01 Oct 2024 10:05:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1svZl4-0006BO-J5
 for linux1394-devel@lists.sourceforge.net;
 Tue, 01 Oct 2024 10:05:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wOxT5KYR+N51EQ/NZEM7g5lytidSXxiuMO+mQvUywYk=; b=UmrAgxw5ucbW6VJLzcLKmnqBPU
 i6fG3Me6StoWbMSPb2D2BQP9iSBR43ViekhL1ztsQ+eNQxSKU9GxDD3UUXK1zWfa4CazKr5Be+7SC
 o7u9c+lle5GDoBRBcBZREVAUTvwwFZTEsoiPGyuFMp1lTMzedfa/Rhk2hShut/yVH5VM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wOxT5KYR+N51EQ/NZEM7g5lytidSXxiuMO+mQvUywYk=; b=W33Htp2jsD58BWGTgmzhNFCZte
 uNTSBstasqEZakelEfLZc4wqPPOBaX6/r3MNAxyM1zQ3nBcIyM1Ce1VjiEBs54NlItpd2JbOSVRUj
 LzkOxke8OwZ4PLwAFPh18DJXDIrgUHHkYMgg0wlxCUDcqcwBvQK2gDue39f8NHLQ4dL8=;
Received: from fout-a2-smtp.messagingengine.com ([103.168.172.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1svZl3-0007j8-5O for linux1394-devel@lists.sourceforge.net;
 Tue, 01 Oct 2024 10:05:30 +0000
Received: from phl-compute-10.internal (phl-compute-10.phl.internal
 [10.202.2.50])
 by mailfout.phl.internal (Postfix) with ESMTP id 70E071381639;
 Tue,  1 Oct 2024 06:05:23 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-10.internal (MEProxy); Tue, 01 Oct 2024 06:05:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1727777123; x=
 1727863523; bh=wOxT5KYR+N51EQ/NZEM7g5lytidSXxiuMO+mQvUywYk=; b=N
 w9REgsM6BmIsqCKAITxVr15Bdos23Jt8SZ5gyOoiVKzzTFHzwxbeBxA4Uc+Ayo+l
 bSWeHLR7lyvIz+a4bLi4K2h0W8VHjW7PlR2bcs6A1ofD01eIYGnilaJQaRg6tTQJ
 cFMgDYAWPS7CE/1USWCd84fbGZ45JVPYEzgj1HqNKBGcRXDaePA4MS3ZcWt22JoA
 7/pQ/nF2aDC4oNASmreaCNIJfJn4fygTUSTbcqHGcqar/2Mt8eZi10lOmBC77z1e
 vDeF+TFhggzYnFfWqzOVFFEmta3rmxTxOMAiudmkZIXUErofhROSJpvkNRA63KhW
 nFD5uXuzWzRV2N4aPrY/Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1727777123; x=1727863523; bh=wOxT5KYR+N51EQ/NZEM7g5lytidS
 XxiuMO+mQvUywYk=; b=HKr5OPMndUwNomjSf3tYIcRUGSvC3F8UJLnNHob7Zr07
 rtJlUYQKj+8HUuj4lz7g/1Xg5kp4bB1GXNwixkdOEFoZEvooKtcCkj28jykvj0a2
 g1Tvgw0ayFwAxXFA79SUCRUjUwMOFwX3GvmDEoqODDcfx+gLv/5Q4NcvdYo5BnWf
 n9UMniwdjx+asMkjdiWgy/MrvqnqhQebvmjWCtlr8d5abDyOyeogXGVs0JVGbOFE
 Wdt5jR7qoq5BCRoxwJl4kRgyWeQarigEkk4UTzP3WBg4u2QrcinKmM0JkMxLgEvo
 5VlDYdAS19UKNdBhi6+lBjW0LZAmW1BMOu/I/uKhVQ==
X-ME-Sender: <xms:Y8n7ZnkMNLPDH1KiF8sLSy4Xhli8OzJFRoGbe2AUWVywWt8P5t8rAA>
 <xme:Y8n7Zq0h4MXQN712d94ouYB0OTnevhwov-Ca0AYEydAvBYgS3fLycVog1HlntzAO9
 ryqaquLjnVuf6QSHB4>
X-ME-Received: <xmr:Y8n7ZtocjKdVgydr6IoxLAXIPID-BEoSDWF7yBV7qpxjXsqY25AntBFQm4ViIhF9PcO5YVDdU5WEadbBRzUTVXKGPD-xdJ5LFQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvddujedgvdefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvden
 ucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhephefhhfettefgkedvieeu
 ffevveeufedtlefhjeeiieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfuihiivg
 eptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhho
 tggthhhirdhjphdpnhgspghrtghpthhtohepgedpmhhouggvpehsmhhtphhouhhtpdhrtg
 hpthhtohepshhhvghnlhhitghhuhgrnhesvhhivhhordgtohhmpdhrtghpthhtoheplhhi
 nhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvth
 dprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhr
 ghdprhgtphhtthhopehophgvnhhsohhurhgtvgdrkhgvrhhnvghlsehvihhvohdrtghomh
X-ME-Proxy: <xmx:Y8n7ZvmQbyLM0kz_6Wg1VKdsMmPEMyRAt36zndiRj-1DnpEGazg0-w>
 <xmx:Y8n7Zl00kLVTRtVo94HJvAXS55fqKN-AO2mNt65GtRyJuP3JyUNcZQ>
 <xmx:Y8n7Zut1FEqflWsVRr_VTPk-0paFHmhdf_DmXqSzHRzQumVyjthpZw>
 <xmx:Y8n7ZpXo6N0eKgzfqV76ydY7PVrg3fvvPj42Je2I0ZXiscbKwvZaSg>
 <xmx:Y8n7ZgQV9cDK7Ih6YYbtFPXBvKqiIupwfHSVUlE2fS_KEol3yF92Pwqr>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 1 Oct 2024 06:05:21 -0400 (EDT)
Date: Tue, 1 Oct 2024 19:05:18 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Shen Lichuan <shenlichuan@vivo.com>
Subject: Re: [PATCH v1] firewire: Correct some typos
Message-ID: <20241001100518.GA124709@workstation.local>
Mail-Followup-To: Shen Lichuan <shenlichuan@vivo.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 opensource.kernel@vivo.com
References: <20240930023344.7535-1-shenlichuan@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240930023344.7535-1-shenlichuan@vivo.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Mon, Sep 30, 2024 at 10:33:44AM +0800, Shen Lichuan
 wrote: > Fixed some confusing typos that were currently identified with
 codespell, 
 > the details are as follows: > > drivers/firewire/core-topolo [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.145 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1svZl3-0007j8-5O
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: opensource.kernel@vivo.com, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Mon, Sep 30, 2024 at 10:33:44AM +0800, Shen Lichuan wrote:
> Fixed some confusing typos that were currently identified with codespell,
> the details are as follows:
> 
> drivers/firewire/core-topology.c:59: containted ==> contained
> drivers/firewire/core.h:83: reenable ==> re-enable
> drivers/firewire/ohci.c:1387: apppends ==> appends
> drivers/firewire/ohci.c:2216: superceded ==> superseded
> drivers/firewire/ohci.c:2617: litte ==> little
> 
> Signed-off-by: Shen Lichuan <shenlichuan@vivo.com>
> ---
>  drivers/firewire/core-topology.c | 2 +-
>  drivers/firewire/core.h          | 2 +-
>  drivers/firewire/ohci.c          | 6 +++---
>  3 files changed, 5 insertions(+), 5 deletions(-)

Applied to for-next branch.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
