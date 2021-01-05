Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C202EA2FF
	for <lists+linux1394-devel@lfdr.de>; Tue,  5 Jan 2021 02:48:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1kwbSb-0001jI-4G; Tue, 05 Jan 2021 01:48:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bart.vanassche@gmail.com>) id 1kwbSZ-0001jA-AS
 for linux1394-devel@lists.sourceforge.net; Tue, 05 Jan 2021 01:48:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iUVK5navqb95pupmgd9YzX87VeG3u/6V7I7N2PejYtg=; b=Xfcq3a6GK4vqvKp2ZBsXVVCcTU
 o4oAYVkHskBN62PvUHOyx4iwCJKFmKmxG8XnVgKhXOQL/WieSTWYxIz0hdUHg92Gp/mmesoTsu2wr
 yTNTYA1bwgg/M6p5/Mv6QJwoEBkSLNyU/6hRI4puUVwews/yFcmNUaeHJrxwZTs3kJSQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iUVK5navqb95pupmgd9YzX87VeG3u/6V7I7N2PejYtg=; b=c0Q9PL3qkpaaYTt0X//CP8O1Xi
 EG8liEu4T60JHPvVHNlcj9wniDTSDGgB26RC++Pr/DHz9Xf2283q4aezrQHVSigaPry4rxM1wlmjn
 eZ61HHaLyslActVl7EKrchCi4qvMI3DWakoilxLMcVPkln/cFTe5D8kyy3vQX2S+gIlo=;
Received: from mail-pg1-f169.google.com ([209.85.215.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kwbSI-00E5mN-Oi
 for linux1394-devel@lists.sourceforge.net; Tue, 05 Jan 2021 01:48:31 +0000
Received: by mail-pg1-f169.google.com with SMTP id c22so20230292pgg.13
 for <linux1394-devel@lists.sourceforge.net>;
 Mon, 04 Jan 2021 17:48:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=iUVK5navqb95pupmgd9YzX87VeG3u/6V7I7N2PejYtg=;
 b=oi/cPSu3YbIU5zSo73S9b0zKk9INY1P7ljfKEIO+5e9YR5DG2qKW0uPF3YbYQMR4+O
 jddoM/0QjHcJo8SvMuBIYdWcZG3ojGL6MjtqqEds7y5fJVUTKEg6BmntTimTx/qWWpAQ
 tMP94hXanpSwg5Pd3k60T00ePTAt+A9OQanDK7RH8Uo2C1RO6lwWDUXxYQuSYEfy7vti
 0zhCrJMnCU6gTeB77lK3gsFWGP5Tq3BIOnGYQHwSSsucNf8RUcJgrCHRbCZrhGuWiBN6
 OGB6JSt1piNEPovApJ9jv1pfFAu3Z56CBBbd3B0w2LxBXbF1P+IlFMFSRfyvQ3LU6A8x
 8BXw==
X-Gm-Message-State: AOAM5311s16UCMbObGkJ8cvmrtTtzunIkyEI2VuH9ilKxTcKzTUN1zCn
 5v1OgiAtp4BAB3HXfgPzfCaTKug3mwM=
X-Google-Smtp-Source: ABdhPJwzgRX+RGhlnQaIjfArrJuHlMKAMOxe4eTbuOyxNFW7vMhZmvmjR2h5swJDzjjpRU13PM4MEw==
X-Received: by 2002:a63:5d7:: with SMTP id 206mr75322598pgf.384.1609811289105; 
 Mon, 04 Jan 2021 17:48:09 -0800 (PST)
Received: from [192.168.3.217] (c-73-241-217-19.hsd1.ca.comcast.net.
 [73.241.217.19])
 by smtp.gmail.com with ESMTPSA id i7sm56827951pfc.50.2021.01.04.17.48.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 Jan 2021 17:48:08 -0800 (PST)
Subject: Re: [PATCH] scsi: target/sbp: remove firewire SBP target driver
To: Finn Thain <fthain@telegraphics.com.au>
References: <01020172acd3d10f-3964f076-a820-43fc-9494-3f3946e9b7b5-000000@eu-west-1.amazonses.com>
 <alpine.LNX.2.22.394.2006140934520.15@nippy.intranet>
 <7ad14946-5c25-fc49-1e48-72d37a607832@boo.tc>
 <alpine.LNX.2.22.394.2006150919110.8@nippy.intranet>
 <8da0c285-d707-a3d2-063e-472af5cc560f@boo.tc>
 <alpine.LNX.2.22.394.2006161929380.8@nippy.intranet>
 <8cbab988-fba7-8e27-7faf-9f7aa36ca235@acm.org>
 <alpine.LNX.2.22.394.2006171104540.11@nippy.intranet>
 <e3b5ce6a-0152-01b8-89d2-80bcdb9c1c57@acm.org>
 <alpine.LNX.2.23.453.2101050840010.6@nippy.intranet>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <9103b316-8848-2350-7c0d-b742c8d8c83c@acm.org>
Date: Mon, 4 Jan 2021 17:48:06 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <alpine.LNX.2.23.453.2101050840010.6@nippy.intranet>
Content-Language: en-US
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (bart.vanassche[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.169 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.169 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kwbSI-00E5mN-Oi
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
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-scsi@vger.kernel.org, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, Nicholas Bellinger <nab@linux-iscsi.org>,
 target-devel@vger.kernel.org, Chris Boot <bootc@boo.tc>,
 linux1394-devel@lists.sourceforge.net, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On 1/4/21 2:50 PM, Finn Thain wrote:
> On Mon, 4 Jan 2021, Bart Van Assche wrote:
>> Additionally, there is a good alternative available for the sbp driver. 
>> Every system I know of that is equipped with a Firewire port also has an 
>> Ethernet port. So users who want to provide SCSI target functionality on 
>> such systems can use any SCSI transport protocol that is compatible with 
>> Ethernet (iSCSI, iSER over soft-RoCE, SRP over soft-RoCE, ...).
> 
> Ethernet is not always an alternative. That was already discussed in this 
> thread. But let's assume for a moment that you can migrate any and all 
> users of this driver over to an ethernet driver.
> 
> Why would the maintainers of that Ethernet driver and its API accept that 
> plan, if adding users would extend their maintenance and testing 
> obligations? Do you think those maintainers should pay the "kind of tax 
> that all developers/users pay to all developers/users?"

Hi Finn,

I cannot speak in the name of the iSCSI over TCP/IP or iSER driver
maintainers. But since I maintain the SRP initiator and target kernel
drivers myself, I can state that I would be happy to help SBP target users
(if that driver has any users today) to switch from SCSI over Firewire to
SCSI over SRP over RoCE or even NVMEoF over TCP.

Thanks,

Bart.


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
