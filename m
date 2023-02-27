Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B766A4204
	for <lists+linux1394-devel@lfdr.de>; Mon, 27 Feb 2023 13:49:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1pWcwe-0000eN-J7;
	Mon, 27 Feb 2023 12:49:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1pWcwc-0000e5-L9
 for linux1394-devel@lists.sourceforge.net;
 Mon, 27 Feb 2023 12:49:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EqS+idSS171sl5ym4IciX/DeVIr0POofqgdNAlp+/BA=; b=GrSqwtH0xA3lp7DjXs7+DBLbM6
 c/RmQkVlUFUx9AjX+9U1t94gGieRSlIuWaZZ5OR3edNXZZDwkrZwulWMhXiKoH48SfBOFP5hHqonP
 byf3RBn3FSJYTj8F9Fige5NQLgRmpNyV4iMbdGrNk9eniE3xNDmMlRGptKWoDq7q/HeQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EqS+idSS171sl5ym4IciX/DeVIr0POofqgdNAlp+/BA=; b=PLItGfeZaP/F6ZWo96UpB8n09h
 BYk3Z4TIFYmMvuC0kPyOHRJfzbv7nAyrUzvw+29vJe5CWoePyQMJdI5ONPZs/nBETHVs2ArDL4rCn
 d0H39KTcxOePCxk9kkzHsiwnJTQ32L8ILHhn75i8Yegalpk1wuFIbJlX0f9e5tOwaHVQ=;
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pWcwW-003JyR-KN for linux1394-devel@lists.sourceforge.net;
 Mon, 27 Feb 2023 12:49:29 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id A821C5C010C;
 Mon, 27 Feb 2023 07:49:15 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Mon, 27 Feb 2023 07:49:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm1; t=1677502155; x=1677588555; bh=Eq
 S+idSS171sl5ym4IciX/DeVIr0POofqgdNAlp+/BA=; b=eCmMQpmzY3R58t6Q23
 6py5de8w/F9GS+89rLtnTUlRUrMvS0gHKEiWD/AP4PmqIIYHLaoOT5Jy5KmJjDhZ
 pz0XqlfK+iwAUdcP5p2OQDRpOmzNi8Oi+wDzfg2O4rjvSR8EbRAm5ahMrQGpoejT
 M5sUI9irfO/WUqiBKxTi2JLcTMX10xHC7/tRqyX3UF9O9pK/V9amZ2vQGXmlg3Jv
 xQhlud8gQ2LVmpxfEypjL0zv/v1ISTzA5LmNCZGlaOYgUrvpwoHOln1ZVJCYRPQj
 CNBPiqFU4bD7yXP9pg3y2UpJQiET3hbg46Uxr13+4rH4PObgsHtv7hNOniKOuMWZ
 hHFg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
 :feedback-id:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:sender:subject:subject:to:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1677502155; x=1677588555; bh=EqS+idSS171sl5ym4IciX/DeVIr0
 POofqgdNAlp+/BA=; b=LMKo8sKk7QfAYAO/BQT7tJdHBbybDDpdNoZQ14kWO2l1
 7UzXWeJbI65bGRuawLwLtgcoVafQnkqljVdsM6raJ6rgSxkCq/4aeqfciMJfQhQc
 aBKE4Y7UFPyt+GwxwQOmGrcSvoNIjer2el4tpEPRirIe1uMNuK7FdcwU0h+S76C3
 5uz9DgkriGoT7VIBekLCI4j1fZr3w2hQjeN8Aic5hoimF/xMDtj45a8CxT53cv8y
 77Ajw2+n20fYaWxds3BOtmAJMRW5IherfntOnz04K88pvCMKPA2FOufZVhHlGVHr
 McUHIIEUctTfQptW69wlP6cGvKbBKQQLQD5rV9UDLg==
X-ME-Sender: <xms:y6b8Y7tLm_tGyaojFrGUycOSgnehDFmBMLJSfDRrRjIOFFK5SzyUcQ>
 <xme:y6b8Y8dcg-mAcN-SzfDhxe0oUYCn3YsaPyt6NooBb7qIXzTAi5VKiWdGzjXbsZfQM
 oYhQi-SHTH4M1jlWfA>
X-ME-Received: <xmr:y6b8Y-yiHYP9bTeK4AvdNvau1opou0-oj6FmcMwsFCnMsy_2Vyn9hxwVuIVLsRJJGAXo8ufYdD_czULd1CzG8iHsZwQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrudeltddggedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
 ertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhte
 etgfekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:y6b8Y6PScZK-cYHAu8AE8ufjZOD-EPd4cRRH5xl1IH8cWrc-NCSEyg>
 <xmx:y6b8Y7_lPGLHAIsaytJnHe-WGfyCAYifAr7r4UUO8LxeoVmZpwC-9Q>
 <xmx:y6b8Y6UIUnmfWJI1aAx2iSu5Yhcw-Dfz_lAjGWAE88Za28odWficOw>
 <xmx:y6b8Y9JL8Q5yBXHKGKcQIG2-g5CNrrBBYhb-09jITiRYC4fNF5UOkw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 27 Feb 2023 07:49:14 -0500 (EST)
Date: Mon, 27 Feb 2023 21:49:11 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Dan Carpenter <error27@gmail.com>
Subject: Re: [bug report] firewire: cdev: obsolete NULL check to detect IEC
 61883-1 FCP region
Message-ID: <Y/ymx6WZIAlrtjLc@workstation>
Mail-Followup-To: Dan Carpenter <error27@gmail.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 alsa-devel@alsa-project.org
References: <Y/yOy6Ddz1263Zln@kili>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y/yOy6Ddz1263Zln@kili>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, (C.C.ed to LKML and alsa-devel) On Mon, Feb 27, 2023 at
 02:06:51PM +0300, Dan Carpenter wrote: > Hello Takashi Sakamoto, > > The
 patch e699600232e0: "firewire: cdev: obsolete NULL check to > detect IEC
 61883-1 FCP region" from Jan 2 [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pWcwW-003JyR-KN
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
Cc: alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,
(C.C.ed to LKML and alsa-devel)

On Mon, Feb 27, 2023 at 02:06:51PM +0300, Dan Carpenter wrote:
> Hello Takashi Sakamoto,
> 
> The patch e699600232e0: "firewire: cdev: obsolete NULL check to
> detect IEC 61883-1 FCP region" from Jan 20, 2023, leads to the
> following Smatch static checker warning:
> 
> 	drivers/firewire/core-transaction.c:947 handle_fcp_region_request()
> 	warn: passing freed memory 'request'
> 
> drivers/firewire/core-transaction.c
>     930                 fw_send_response(card, request, RCODE_TYPE_ERROR);
>     931 
>     932                 return;
>     933         }
>     934 
>     935         rcu_read_lock();
>     936         list_for_each_entry_rcu(handler, &address_handler_list, link) {
>     937                 if (is_enclosing_handler(handler, offset, request->length))
>     938                         handler->address_callback(card, request, tcode,
>                                                                 ^^^^^^^
> This warning is because fwnet_receive_packet() has a kfree(r) on the
> first return path.
> 
>     939                                                   destination, source,
>     940                                                   p->generation, offset,
>     941                                                   request->data,
>     942                                                   request->length,
>     943                                                   handler->callback_data);
>     944         }
>     945         rcu_read_unlock();
>     946 
> --> 947         fw_send_response(card, request, RCODE_COMPLETE);
>     948 }

Thanks for your report.

Fortunately, We can not see the access to the released memory since the
fwnet's address handler is registered to high memory region
(0x'0001'0000'0000 to 0x'ffff'e000'0000). The region does not overlap
IEC 61883-1 FCP region (0x'ffff'f000'0b00 to 0x'ffff'f000'0f00). The
handler is called from handle_exclusive_region_request() instead of
handle_fcp_region_request().

However, the code in fwnet is against the design of address handler
apparently. The callee never release the memory for the request structure
directly. It should be done by the call of fw_send_response(). I'll
correct it for next merge window; i.e. for v6.4.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
